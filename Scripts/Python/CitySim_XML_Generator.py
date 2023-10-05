import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
warnings.filterwarnings('error')
import sqlalchemy as sqla
import psycopg2
import pyproj
import geopandas as gpd
import pandas as pd
pd.options.mode.chained_assignment = None  # default='warn'
import sys
from shapely.geometry import Polygon, MultiPolygon, shape, Point
import numpy as np
from shapely.ops import triangulate
import os
import time
from psycopg2.extensions import register_adapter, AsIs
import shapely
from datetime import datetime

def addapt_numpy_float64(numpy_float64):
    return AsIs(numpy_float64)
def addapt_numpy_int64(numpy_int64):
    return AsIs(numpy_int64)
register_adapter(np.float64, addapt_numpy_float64)
register_adapter(np.int64, addapt_numpy_int64)

pyproj.datadir.get_data_dir()
pyproj.datadir.set_data_dir(pyproj.datadir.get_data_dir())

folder = os.path.dirname(os.path.abspath(__file__))
os.chdir(folder)

time_start = datetime.now()
print(f'starting time: {time_start}')

#### Global variables definition ####

inputFolder = "data"
outputFolder = os.path.join(os.path.dirname(folder),inputFolder)
refurbishmentScenario = 'advRefurb' # replace with the corresponding refurbishment scenario options: 'statusQuo', 'mediumRefurb', 'advRefurb'
country = 'NL'
profilesType='default'
weather_file = 'Heino.cli'
horizon_file = 'Rijssen.hor'
horizon_file_path = os.path.join(outputFolder,horizon_file)
print(f"input Horizon file exits: {os.path.exists(horizon_file_path)}")
input_city = 'Rijssen'
num_decimals = 3
EPSG = 28992

resultsPath = os.path.join(os.path.dirname(folder),"output")
isExist = os.path.exists(resultsPath)

if not isExist:
  # Create a new directory because it does not exist
  os.makedirs(resultsPath)
  print("The output directory is created!")

#### Part 1.0: Database connection parameters ####
# 3DCityDB Instance
e1_user = ''
e1_password = ''
e1_host = ''
e1_port = 5432
e1_dbname = ''
e1_dbschema= ''

db_url_1 = f'postgresql+psycopg2://{e1_user}:{e1_password}@{e1_host}:{e1_port}/{e1_dbname}'

# DB library
e2_user = ''
e2_password = ''
e2_host = ''
e2_port = 5432
e2_dbname = ''

db_url_2 = f'postgresql+psycopg2://{e2_user}:{e2_password}@{e2_host}:{e2_port}/{e2_dbname}'

residential_value = ['Residential', 'Mixed-use']
min_area = 0.1

#### Building Function filtering parameters ####
dictFunctions = {}
for function in residential_value:
    dictFunctions[function] = 'residential'
dictBuildingType = {}
dictBuildingType['SDH'] = 'SFH'

#### Output files ####
output_citysimfile = '{}/{}_{}_CitySim_input_NoDTM.xml'.format(resultsPath, input_city,refurbishmentScenario)

#### Connection to the database ####
db_engine1 = sqla.create_engine(
    db_url_1,
    connect_args={'options': f'-csearch_path={e1_dbschema},public'})

db_engine2 = sqla.create_engine(
    db_url_2
    )

# Test connection
try:
    db_connection = db_engine1.connect()
    print(f'3DCityDB: Connection successful')
    db_connection.close()
except Exception as exc:
    print("3DCityDB: Couldn't connect to the database\n")

# Test connection
try:
    db_connection2 = db_engine2.connect()
    print(f'Library DB: Connection successful')
    db_connection2.close()
except Exception as exc:
    print("Library DB: Couldn't connect to the database")

### starts Global functions definition ####

# basic function to show you the time the script takes up to you call it.

def time_delta(time_start):
    time_finish = datetime.now()
    print(f'End time: {time_finish}')


    # get difference
    delta = time_finish - time_start

    sec = delta.total_seconds()
    print('difference in seconds:', sec)

    min = sec / 60
    print('difference in minutes:', min)

    # get difference in hours
    hours = sec / (60 * 60)
    print('difference in hours:', hours)

def is_convex(points):
        """
        Static method. Returns True if the polygon is convex regardless
        of whether its vertices follow a clockwise or a
        counter-clockwise order. This is a requirement for the rest of
        the program.

        :param points: Points intented to form a polygon.
        :type points: ndarray with points xyz in rows
        :returns: Whether a polygon is convex or not.
        :rtype: bool

        .. note:: Despite the code works for ccw polygons, in order to
            avoid possible bugs it is always recommended to use ccw
            rather than cw.

        .. warning:: This method do not check the order of the points.
        """
        # Verification based on the cross product
        n_points = points.shape[0]
        i=-1
        u = points[i] - points[i-1]
        v = points[i+1] - points[i]
        last = np.sign(np.round(np.cross(u, v)))
        while i < n_points-1:
            u = points[i] - points[i-1]
            v = points[i+1] - points[i]
            s = np.sign(np.round(np.cross(u, v)))
            if abs((s - last).max()) > 1:
                return False
            last = s
            i += 2
        return True

# Function to check if the 3D plane is perpendicular to X-Y plane
def check_plane_perpendicular_to_XYplane(x1, y1, x2, y2,x3, y3):
    a1 = x2 - x1
    b1 = y2 - y1
    a2 = x3 - x1
    b2 = y3 - y1
    c = a1 * b2 - b1 * a2
    if c == 0:
        return True
    else:
        return False

# Function to get the largest number out of three
def get_largest(a , b, c):
    if (a > b and a > c):
        return a
    elif (b > a and b > c):
        return b
    else:
        return c
# Function to get the smallest number out of three
def get_smallest(a , b, c):
    if (a < b and a < c):
        return a
    elif (b < a and b < c):
        return b
    else:
        return c
# Function to calculate 3D polygon area
# area of polygon poly (input must be a list or array)
def poly_area(poly):
    if len(poly) < 3: # not a plane - no area
        return 0
    total = [0, 0, 0]
    N = len(poly)
    for i in range(N):
        vi1 = poly[i]
        vi2 = poly[(i+1) % N]
        prod = np.cross(vi1, vi2)
        total[0] += prod[0]
        total[1] += prod[1]
        total[2] += prod[2]
    result = np.dot(total, unit_normal(poly[0], poly[1], poly[2]))
    return abs(result/2)
#unit normal vector of plane defined by points a, b, and c
def unit_normal(a, b, c):
    x = np.linalg.det([[1,a[1],a[2]],
             [1,b[1],b[2]],
             [1,c[1],c[2]]])
    y = np.linalg.det([[a[0],1,a[2]],
             [b[0],1,b[2]],
             [c[0],1,c[2]]])
    z = np.linalg.det([[a[0],a[1],1],
             [b[0],b[1],1],
             [c[0],c[1],1]])
    magnitude = (x**2 + y**2 + z**2)**.5
    return (x/magnitude, y/magnitude, z/magnitude)
# Define function to calculate X value from original terrain TINs planes
def equation_plane_getX(x1, y1, z1, x2, y2, z2, x3, y3, z3, y4, z4):
    a1 = x2 - x1
    b1 = y2 - y1
    c1 = z2 - z1
    a2 = x3 - x1
    b2 = y3 - y1
    c2 = z3 - z1
    a = b1 * c2 - b2 * c1
    b = a2 * c1 - a1 * c2
    c = a1 * b2 - b1 * a2
    d = (- a * x1 - b * y1 - c * z1)
    if a == 0:
        print('Error: surface is perpendicular to X-Z plane')
    else:
        return (-d - c * z4 - b * y4)/a
# Define function to calculate Y value from original terrain TINs planes
def equation_plane_getY(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, z4):
    a1 = x2 - x1
    b1 = y2 - y1
    c1 = z2 - z1
    a2 = x3 - x1
    b2 = y3 - y1
    c2 = z3 - z1
    a = b1 * c2 - b2 * c1
    b = a2 * c1 - a1 * c2
    c = a1 * b2 - b1 * a2
    d = (- a * x1 - b * y1 - c * z1)
    if b == 0:
        print('Error: surface is perpendicular to Y-Z plane')
    else:
        return (-d - c * z4 - a * x4)/b
# Define function to flip a 2D polygon
def reverse_geom(geom):
    def _reverse(x, y, z=None):
        if z:
            return x[::-1], y[::-1], z[::-1]
        return x[::-1], y[::-1]

    return shapely.ops.transform(_reverse, geom)

def convert_3D_2D(geometry):
    '''
    Takes a GeoSeries of 3D Multi/Polygons (has_z) and returns a list of 2D Multi/Polygons
    '''
    new_geo = []
    for p in geometry:
        try:
            if p.has_z:
                if p.geom_type == 'Polygon':
                    lines = [xy[:2] for xy in list(p.exterior.coords)]
                    new_p = Polygon(lines)
                    new_geo.append(new_p)
                elif p.geom_type == 'MultiPolygon':
                    new_multi_p = []
                    for ap in p:
                        lines = [xy[:2] for xy in list(ap.exterior.coords)]
                        new_p = Polygon(lines)
                        new_multi_p.append(new_p)
                    new_geo.append(MultiPolygon(new_multi_p))
        except:
            print('error:')
    return new_geo

# Get the coordinates list for calculation
def coord_lister(geom):
    coords = list(geom.exterior.coords)
    return (coords)

# Define function to calculate Z value from original terrain TINs planes
def equation_plane_getZ(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4):
    a1 = x2 - x1
    b1 = y2 - y1
    c1 = z2 - z1
    a2 = x3 - x1
    b2 = y3 - y1
    c2 = z3 - z1
    a = b1 * c2 - b2 * c1
    b = a2 * c1 - a1 * c2
    c = a1 * b2 - b1 * a2
    d = (- a * x1 - b * y1 - c * z1)
    if c == 0:
        print('Error: surface is perpendicular to X-Y plane')
    else:
        return (-d - a * x4 - b * y4)/c

# Define a function to calculate number of residents by volume and storey height
def calculate_num_residents(lod2_volume,storeyHeightsAboveGround):
    floor_area = lod2_volume/storeyHeightsAboveGround
    density = 1/20 #1 person per 20 square meter
    num_residents = round(floor_area * density)
    return num_residents

# define a function to write 24 values for day profile
def write_day(a):
    text = ''
    n = 1
    for i in a:
        text = text + 'p' + str(n) + '="' + str(i) + '" '
        n = n + 1
    return text
# define a function to write 365 values for year profile
def write_year(a):
    text = ''
    n = 1
    for i in a:
        text = text + 'd' + str(n) + '="' + str(i) + '" '
        n = n + 1
    return text

### Source code ###

# Bounding box for the area of interest. This is a sample for some building blocks in the municipality of Rijssen-Holten
x_min_selection = 232000
y_min_selection = 479900
x_max_selection = 232400
y_max_selection = 480300
BUFFER =20

x_min_selection_buffer = str(float(x_min_selection) - float(BUFFER))
y_min_selection_buffer = str(float(y_min_selection) - float(BUFFER))
x_max_selection_buffer = str(float(x_max_selection) + float(BUFFER))
y_max_selection_buffer = str(float(y_max_selection) + float(BUFFER))

refurbishmentOptions = pd.read_sql_query("select distinct refurbishment FROM building.v_parameter;", db_engine2)
print(refurbishmentOptions)

### Part 2: Download geometry data from the 3DCityDB ###

# Download lod2 buildings geometry envelope from the database

geometry_envelope = gpd.read_postgis(f" select distinct ts.objectclass_id, ts.building_id, ts.lod2_multi_surface_id, sg.gmlid, sg.geometry, c.gmlid as parent_gmlid, sg.cityobject_id from {e1_dbschema}.thematic_surface as ts LEFT JOIN {e1_dbschema}.surface_geometry as sg ON ts.lod2_multi_surface_id = sg.parent_id LEFT JOIN {e1_dbschema}.cityobject as c ON ts.building_id = c.id LEFT JOIN {e1_dbschema}.cityobject_genericattrib cg on ts.id = cg.cityobject_id where (sg.geometry && ST_MakeEnvelope({x_min_selection},{y_min_selection},{x_max_selection},{y_max_selection},28992)) ORDER BY parent_gmlid;", db_engine1, geom_col = "geometry").set_crs(epsg=28992, inplace=True)

# Download trees geometry envelope from the database
tree_envelope = gpd.read_postgis(f"SELECT g.* from (SELECT o.id::bigint AS co_id, ST_SetSRID(ST_Affine(ST_Collect(sg.implicit_geometry),split_part(lod2_implicit_transformation, ' ', 1)::numeric,0,0,0,split_part(lod2_implicit_transformation, ' ', 6)::numeric,0,0,0,split_part(lod2_implicit_transformation, ' ', 11)::numeric,ST_X(o.lod2_implicit_ref_point),ST_Y(o.lod2_implicit_ref_point),ST_Z(o.lod2_implicit_ref_point)),srs.srid)::geometry(MultiPolygonZ, 28992) AS geom FROM {e1_dbschema}.solitary_vegetat_object AS o INNER JOIN {e1_dbschema}.implicit_geometry AS ig ON (ig.id = o.lod2_implicit_rep_id) INNER JOIN {e1_dbschema}.surface_geometry AS sg ON (sg.root_id = ig.relative_brep_id), {e1_dbschema}.database_srs AS srs GROUP BY o.id,srs.srid)g WHERE g.geom && ST_MakeEnvelope(%s,%s,%s,%s,%s)"%(x_min_selection_buffer, y_min_selection_buffer, x_max_selection_buffer, y_max_selection_buffer, EPSG), db_engine1, geom_col = "geom")
# Download terrain geometry envelope from the database
terrain_envelope = gpd.read_postgis("SELECT surface_geometry.gmlid, surface_geometry.id, surface_geometry.geometry FROM surface_geometry, tin_relief WHERE surface_geometry.parent_id = tin_relief.surface_geometry_id AND surface_geometry.geometry && ST_MakeEnvelope(%s,%s,%s,%s,%s)"%(x_min_selection_buffer, y_min_selection_buffer, x_max_selection_buffer, y_max_selection_buffer, EPSG), db_engine1, geom_col = "geometry")
# Show the number of buildings inside the study area
number_of_building = len(pd.unique(geometry_envelope['building_id']))

print(f'Number of selected buildings: {number_of_building} with {geometry_envelope.shape[0]} surfaces' )
print(f'Number of Trees: {tree_envelope.shape[0]}')
print(f'Number of Terrain features: {terrain_envelope.shape[0]}')

### Download data of buildings from the database

# Create a list of buildings in the study area as index
building_list = geometry_envelope.drop_duplicates(subset = ["parent_gmlid"])[['building_id', 'parent_gmlid']].reset_index().drop(["index"], axis=1)

# Download attributes data of buildings from the database
num_residents_df = pd.read_sql_query("SELECT cityobject_id as building_id, CASE datatype WHEN 2 THEN intval END AS num_residents FROM {}.cityobject_genericattrib WHERE attrname = 'num_residents'".format(e1_dbschema), db_engine1)

lod2_volume_df = pd.read_sql_query("SELECT cityobject_id as building_id, CASE datatype WHEN 6 THEN realval END AS lod2_volume FROM {}.cityobject_genericattrib WHERE attrname = 'lod2_volume'".format(e1_dbschema), db_engine1)

building_function_df = pd.read_sql_query(f"select b.id as building_id, c.gmlid, b.class as function from {e1_dbschema}.building b inner join {e1_dbschema}.cityobject c on c.id = b.id ;", db_engine1)

# Building queries
# Type
building_type_df = pd.read_sql_query("SELECT cityobject_id as building_id, CASE datatype WHEN 1 THEN strval END AS building_type FROM {}.cityobject_genericattrib WHERE attrname = 'building_type'".format(e1_dbschema), db_engine1)

print(building_type_df.groupby('building_type').count())

# Year of Construction
building_year_of_construction_df = pd.read_sql_query("SELECT id AS building_id, EXTRACT(YEAR FROM year_of_construction) AS year_of_construction FROM {}.building".format(e1_dbschema), db_engine1)

# Merge the buildings list with attributes data
building_list = building_list.merge(num_residents_df, how='left').merge(lod2_volume_df, how='left').merge(building_function_df, how='left').merge(building_year_of_construction_df, how='left').merge(building_type_df, how='left')

# Remove buildings that are not residential in the study area
shading_list_bldg = tuple(list(building_list['parent_gmlid'][~building_list.function.isin(residential_value)].unique()))
building_list = building_list[building_list.function.isin(residential_value)]

# If the number of residents information doesn't exist, calculate it by function
building_list["num_residents"].fillna(calculate_num_residents(building_list["lod2_volume"], 3), inplace = True)

### Download building, tree and terrain physics data from the database

#outer wall
Wall_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id  as outWalls_constructionTypeId from building.v_parameter where element = 'outerWall' and refurbishment = '{}' and layered_material_id is not null and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Wall_type_constructionTypeId_df.shape[0] == 0:
    Wall_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id  as outWalls_constructionTypeId from building.v_parameter where element = 'outerWall' and refurbishment = 'statusQuo' and layered_material_id is not null and country='{}';".format(country), db_engine2)
Wall_type_windowTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,opening_id as outWalls_windowTypeId from building.v_parameter where element = 'outerWall' and refurbishment = '{}' and name = 'window' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Wall_type_windowTypeId_df.shape[0] == 0:
    Wall_type_windowTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,opening_id as outWalls_windowTypeId from building.v_parameter where element = 'outerWall' and refurbishment = 'statusQuo' and name = 'window' and country='{}';".format(country), db_engine2)
Wall_type_windowRatio_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as outWalls_windowRatio from building.v_parameter where element = 'outerWall' and refurbishment = '{}' and name = 'windowRatio' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Wall_type_windowRatio_df.shape[0] == 0:
    Wall_type_windowRatio_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as outWalls_windowRatio from building.v_parameter where element = 'outerWall' and refurbishment = 'statusQuo' and name = 'windowRatio' and country='{}';".format(country), db_engine2)
Wall_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as outWalls_uValue from building.v_parameter where element = 'outerWall' and refurbishment = '{}' and name = 'uValue' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Wall_type_uValue_df.shape[0] == 0:
    Wall_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as outWalls_uValue from building.v_parameter where element = 'outerWall' and refurbishment = 'statusQuo' and name = 'uValue' and country='{}';".format(country), db_engine2)
Wall_type_shortWaveReflectance_df = pd.read_sql_query("select library,country,type as building_type,function,value as outWalls_shortWaveReflectance from building.v_parameter where element = 'outerWall' and name = 'shortWaveReflectance' and country='{}';".format(country), db_engine2)
Wall_type_window_df = pd.read_sql_query("select o.id AS outwalls_windowtypeid, o.u_value as outwalls_GlazingUValue, o.g_value as outwalls_GlazingGValue from building.opening o where o.country='{}';".format(country), db_engine2)
Wall_type_df = Wall_type_constructionTypeId_df.merge(Wall_type_windowTypeId_df, how='left').merge(Wall_type_windowRatio_df, how='left').merge(Wall_type_uValue_df, how='left').merge(Wall_type_shortWaveReflectance_df, how='left').merge(Wall_type_window_df, how='left')

#Ground
Ground_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id as groundShell_constructionTypeId from building.v_parameter where element = 'groundShell' and refurbishment = '{}' and layered_material_id is not null and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Ground_type_constructionTypeId_df.shape[0] == 0:
    Ground_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id as groundShell_constructionTypeId from building.v_parameter where element = 'groundShell' and refurbishment = 'statusQuo' and layered_material_id is not null and country='{}';".format(country), db_engine2)
Ground_type_windowRatio_df = pd.read_sql_query("select library,country,type as building_type,function,value as groundShell_windowRatio from building.v_parameter where element = 'groundShell' and name = 'windowRatio' and country='{}';".format(country), db_engine2)
Ground_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as groundShell_uValue from building.v_parameter where element = 'groundShell' and refurbishment = '{}' and name = 'uValue' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Ground_type_constructionTypeId_df.shape[0] == 0:
    Ground_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as groundShell_uValue from building.v_parameter where element = 'groundShell' and refurbishment = 'statusQuo' and name = 'uValue' and country='{}';".format(country), db_engine2)
Ground_type_shortWaveReflectance_df = pd.read_sql_query("select library,country,type as building_type,function,value as groundShell_shortWaveReflectance from building.v_parameter where element = 'groundShell' and name = 'shortWaveReflectance' and country='{}';".format(country), db_engine2)
Ground_type_df = Ground_type_constructionTypeId_df.merge(Ground_type_windowRatio_df, how='left').merge(Ground_type_uValue_df, how='left').merge(Ground_type_shortWaveReflectance_df, how='left')

#Roof
Roof_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id  as pitchedRoof_constructionTypeId from building.v_parameter where element = 'pitchedRoof' and refurbishment = '{}' and layered_material_id is not null and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Roof_type_constructionTypeId_df.shape[0] == 0:
    Roof_type_constructionTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,layered_material_id  as pitchedRoof_constructionTypeId from building.v_parameter where element = 'pitchedRoof' and refurbishment = 'statusQuo' and layered_material_id is not null and country='{}';".format(country), db_engine2)
Roof_type_windowTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,opening_id as pitchedRoof_windowTypeId from building.v_parameter where element = 'pitchedRoof' and refurbishment = '{}' and name = 'window' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Roof_type_windowTypeId_df.shape[0] == 0:
    Roof_type_windowTypeId_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,opening_id as pitchedRoof_windowTypeId from building.v_parameter where element = 'pitchedRoof' and refurbishment = 'statusQuo' and name = 'window' and country='{}';".format(country), db_engine2)
Roof_type_windowRatio_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as pitchedRoof_windowRatio from building.v_parameter where element = 'pitchedRoof' and refurbishment = '{}' and name = 'windowRatio' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Roof_type_windowRatio_df.shape[0] == 0:
    Roof_type_windowRatio_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as pitchedRoof_windowRatio from building.v_parameter where element = 'pitchedRoof' and refurbishment = 'statusQuo' and name = 'windowRatio' and country='{}';".format(country), db_engine2)
Roof_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as pitchedRoof_uValue from building.v_parameter where element = 'pitchedRoof' and refurbishment = '{}' and name = 'uValue' and country='{}';".format(refurbishmentScenario,country), db_engine2)
if Roof_type_uValue_df.shape[0] == 0:
    Roof_type_uValue_df = pd.read_sql_query("select library,country,type as building_type,function,year_from, year_to,value as pitchedRoof_uValue from building.v_parameter where element = 'pitchedRoof' and refurbishment = 'statusQuo' and name = 'uValue' and country='{}';".format(country), db_engine2)
Roof_type_shortWaveReflectance_df = pd.read_sql_query("select library,country,type as building_type,function,value as pitchedRoof_shortWaveReflectance from building.v_parameter where element = 'pitchedRoof' and name = 'shortWaveReflectance' and country='{}';".format(country), db_engine2)
Roof_type_window_df = pd.read_sql_query("select o.id AS pitchedRoof_windowtypeid, o.u_value as pitchedRoof_GlazingUValue, o.g_value as pitchedRoof_GlazingGValue from building.opening o where o.country='{}';".format(country), db_engine2)
Roof_type_df = Roof_type_constructionTypeId_df.merge(Roof_type_windowTypeId_df, how='left').merge(Roof_type_windowRatio_df, how='left').merge(Roof_type_uValue_df, how='left').merge(Roof_type_shortWaveReflectance_df, how='left').merge(Roof_type_window_df, how='left')

profile_df = pd.read_sql_query("SELECT case when function='residential' then 1 else 2 end as profile_id, 'TABULA' as library, 'NL' as country, type,function,array_length, values_array, description FROM building.profile;", db_engine2)
occupancy_profile_df = pd.read_sql_query("select distinct case when function = 'residential' then 1 else 2 end as occupancy_profile_id, 'TABULA' as library, 'NL' as country, function FROM building.profile;", db_engine2)
composite_df = pd.read_sql_query("select l.id,'TABULA' as library,'NL' as country, l.layered_material_id as construction_id,lm.category as construction_category, lm.name as construction_name, m.id as material_id, l.thickness, l.thickness_uom, lm.description from building.layer l inner join building.layered_material lm on lm.id = l.layered_material_id inner join building.material m on m.id = l.material_id;", db_engine2)
layer_df = pd.read_sql_query("select 'TABULA' as library,'NL' as country, m.id as material_id, m.density, m.spec_heat_capacity, m.therm_conductivity from building.material m;", db_engine2)
tree_physics_df = pd.read_sql_query("select * from citysim.tree t ;", db_engine2)
terrain_physics_df = pd.read_sql_query("SELECT * FROM citysim.terrain", db_engine2)
heat_source_df = pd.read_sql_query("SELECT * FROM citysim.heat_cool_source WHERE type = 'Heat'", db_engine2)
cool_source_df = pd.read_sql_query("SELECT * FROM citysim.heat_cool_source WHERE type = 'Cool'", db_engine2)
heat_tank_df = pd.read_sql_query("select * from citysim.heat_cool_tank hct where code='GenericHeatTank';", db_engine2)
cool_tank_df = pd.read_sql_query("select * from citysim.heat_cool_tank hct where code='GenericCoolTank';", db_engine2)

# Merge the building physics tables to get a complete building physics table
building_type_df = Wall_type_df.merge(Ground_type_df, how='left').merge(Roof_type_df, how='left').merge(occupancy_profile_df, how='left')

# Building function data preparation
building_list=building_list.replace({"function": dictFunctions})
building_list=building_list.replace({"building_type": dictBuildingType})

# Merge the building physics with building list
df = pd.merge(building_list,building_type_df, on=['building_type','function'],how='left')

building_list = df[(df.year_of_construction >= df.year_from) & (df.year_of_construction <= df.year_to)]
building_list = building_list.reset_index().drop(["index"], axis=1)

### 4.	Downloads shading surfaces ###

shading_list = gpd.read_postgis(f"select sg.id, c.gmlid, sg.geometry from {e1_dbschema}.thematic_surface as ts inner JOIN {e1_dbschema}.surface_geometry as sg ON ts.lod2_multi_surface_id = sg.parent_id inner JOIN {e1_dbschema}.cityobject as c ON ts.building_id = c.id where c.gmlid in {shading_list_bldg}", db_engine1, geom_col = "geometry").set_crs(epsg=28992, inplace=True)

### 5. Party walls processing ###

# Manage the one to one relationship (left building - left wall - right wall - right building)
generalization_df = pd.read_sql_query("SELECT * FROM generalization", db_engine1)
df = pd.merge(generalization_df, geometry_envelope, on='cityobject_id', how="left")

# Check whether buildings are output residential buildings, and keep those
df["exists_building_left"] = df["generalizes_to_id"].isin(building_list["building_id"])
df = df[df['exists_building_left'] == True]
df["exists_building_right"] = df["building_id"].isin(building_list["building_id"])
df = df[df['exists_building_right'] == True]

# Remove those walls in geometry output list
Drop_ci = []
for i in df.index:
    Drop_ci.append(df['cityobject_id'].loc[i])


### Part 6. Check surfaces that will be simulated are convex or not. If not, retriangulate them. ###
### This part requires further work since it still fails in complex geometries.


# remove any building that is in the variable list_bldgs2remove
geometry_envelope = geometry_envelope[~geometry_envelope.cityobject_id.isin(Drop_ci)]
list_bldgs2remove = ['NL.IMBAG.Pand.1742100000000579', 'NL.IMBAG.Pand.1742100000013260','NL.IMBAG.Pand.1742100000005417']
geometry_envelope = geometry_envelope[~geometry_envelope.parent_gmlid.isin(list_bldgs2remove)]

initial_list_bldg = list(geometry_envelope['parent_gmlid'].unique())
new_data = pd.DataFrame()
surfaces_toremove = []
for r in geometry_envelope.index:
    try:
        initial_list_bldg.remove(geometry_envelope['parent_gmlid'].loc[r])
    except:
        pass
    gem_list = coord_lister(geometry_envelope['geometry'].loc[r])
    gem_array = np.array(gem_list)
    # check if the surface is convex
    if is_convex(gem_array) is False:
        df = geometry_envelope.loc[[r]]
        n = 2
        # select three points from the surface that are not collinear
        polygon_check = np.vstack((gem_array[0], gem_array[1], gem_array[n]))
        try:
            while poly_area(polygon_check) == 0:
                n = n + 1
                polygon_check = np.vstack((gem_array[0], gem_array[1], gem_array[n]))
                if n > len(gem_array) - 1:
                    print('Error: surface is not valid')
            x1,y1,z1 = gem_array[0]
            x2,y2,z2 = gem_array[1]
            x3,y3,z3 = gem_array[n]
            # check if the 3D plane formed by three points is perpendicular to X-Y plane
            if check_plane_perpendicular_to_XYplane(x1, y1, x2, y2,x3, y3) is True:
                # decide to project to XZ plane or YZ plane
                x_max = get_largest(x1 , x2, x3)
                x_min = get_smallest(x1 , x2, x3)
                y_max = get_largest(y1 , y2, y3)
                y_min = get_smallest(y1 , y2, y3)
                if x_max - x_min > y_max - y_min:
                    # project to XZ plane
                    pj_gem_list = []
                    for i in gem_array:
                        i = np.delete(i, 1)
                        pj_gem_list.append(i)
                    pj_gem_array = np.array(pj_gem_list)
                    poly_pj = Polygon(pj_gem_array)
                    delauney = triangulate(poly_pj)
                    delauney = pd.DataFrame(delauney)
                    # check the polygon orientation
                    for m in delauney.index:
                        if poly_pj.exterior.is_ccw != delauney[0].loc[m].exterior.is_ccw:
                            POLY_filp = reverse_geom(delauney[0].loc[m])
                            delauney.at[m, 0] = POLY_filp
                    for i in delauney.index:
                        if not delauney[0].loc[i].difference(poly_pj).is_empty:
                            delauney = delauney.drop(i)
                    # Calculate Y value and project surface back to 3D
                    for i in delauney.index:
                        POLY_2D = coord_lister(delauney[0].loc[i])
                        Q = 0
                        for r in POLY_2D:
                            x4, z4 = r
                            y4 = equation_plane_getY(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, z4)
                            POLY_2D[Q] = POLY_2D[Q][:1] + (y4,) + POLY_2D[Q][1:]
                            Q = Q + 1
                        POLY = Polygon(np.array(POLY_2D))
                        delauney.at[i, 0] = POLY
                else:
                    # project to YZ plane
                    pj_gem_list = []
                    for i in gem_array:
                        i = np.delete(i, 0)
                        pj_gem_list.append(i)
                    pj_gem_array = np.array(pj_gem_list)
                    poly_pj = Polygon(pj_gem_array)
                    delauney = triangulate(poly_pj)
                    delauney = pd.DataFrame(delauney)
                    # check the polygon orientation
                    for m in delauney.index:
                        if poly_pj.exterior.is_ccw != delauney[0].loc[m].exterior.is_ccw:
                            POLY_filp = reverse_geom(delauney[0].loc[m])
                            delauney.at[m, 0] = POLY_filp
                    for i in delauney.index:
                        if not delauney[0].loc[i].difference(poly_pj).is_empty:
                            delauney = delauney.drop(i)
                    # Calculate X value and project surface back to 3D
                    for i in delauney.index:
                        POLY_2D = coord_lister(delauney[0].loc[i])
                        Q = 0
                        for r in POLY_2D:
                            y4, z4 = r
                            x4 = equation_plane_getX(x1, y1, z1, x2, y2, z2, x3, y3, z3, y4, z4)
                            POLY_2D[Q] = POLY_2D[Q][:0] + (x4,) + POLY_2D[Q][0:]
                            Q = Q + 1
                        POLY = Polygon(np.array(POLY_2D))
                        delauney.at[i, 0] = POLY
            else:
                # project to XY plane
                pj_gem_list = []
                for i in gem_array:
                    i = np.delete(i, 2)
                    pj_gem_list.append(i)
                pj_gem_array = np.array(pj_gem_list)
                poly_pj = Polygon(pj_gem_array)
                delauney = triangulate(poly_pj)
                delauney = pd.DataFrame(delauney)
                # check the polygon orientation
                for m in delauney.index:
                    if poly_pj.exterior.is_ccw != delauney[0].loc[m].exterior.is_ccw:
                        POLY_filp = reverse_geom(delauney[0].loc[m])
                        delauney.at[m, 0] = POLY_filp
                for i in delauney.index:
                    if not delauney[0].loc[i].difference(poly_pj).is_empty:
                        delauney = delauney.drop(i)
                # Calculate Z value and project surface back to 3D
                for i in delauney.index:
                    POLY_2D = coord_lister(delauney[0].loc[i])
                    Q = 0
                    for r in POLY_2D:
                        x4, y4 = r
                        z4 = equation_plane_getZ(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4)
                        POLY_2D[Q] = POLY_2D[Q] + (z4,)
                        Q = Q + 1
                    POLY = Polygon(np.array(POLY_2D))
                    delauney.at[i, 0] = POLY
            data = pd.DataFrame()
            for q in delauney.index:
                df_tem = df
                df_tem['geometry'] = delauney[0].loc[q]
                frames = [data, df_tem]
                data = pd.concat(frames)
            new_frames = [new_data, data]
            new_data = pd.concat(new_frames)
        except:
            surfaces_toremove.append(geometry_envelope['gmlid'].loc[r])
new_data = new_data.reset_index().drop(["index"], axis=1)

parents_toremove = pd.unique(geometry_envelope['parent_gmlid'][geometry_envelope.gmlid.isin(surfaces_toremove)])

# Adjusting new triangle surface's unique id as compose from parent id
new_data['subid'] = new_data.groupby('lod2_multi_surface_id').cumcount()
new_data['gmlid'] = "NewPolygon_" + new_data['subid'].astype(str) + "_" + new_data['lod2_multi_surface_id'].astype(str)
del new_data['subid']

# Remove non_convex surfaces from geometry_envelope
for i in new_data.index:
    co_id = int(new_data['cityobject_id'].loc[i])
    geometry_envelope = geometry_envelope[geometry_envelope.cityobject_id != co_id]
# Add triangulated surfaces into geomery_envelope
frames = [geometry_envelope, new_data]
geometry_envelope = pd.concat(frames)
geometry_envelope = geometry_envelope.reset_index().drop(["index"], axis=1)

print(f'Number of Buildings: {building_list.shape[0]}')

### Removing buildings with incorrect geometries
geometry_envelope = geometry_envelope[~geometry_envelope.parent_gmlid.isin(parents_toremove)]
building_list = building_list[~building_list.parent_gmlid.isin(parents_toremove)]
print(f'Number of Buildings after removing no valid geometries: {building_list.shape[0]}')

### Part 7. Write the CitySim XML file ###

print('Ends data processing. \n Begins CitySim XML file creation')
# beginning of the document

text = ''
text = text + '<?xml version="1.0" encoding="ISO-8859-1"?>\n'
text = text + '<CitySim name="test">\n'
text = text + '<Simulation beginMonth="1" endMonth="12" beginDay="1" endDay="31"/>\n'
text = text + '<Climate location="' + str(weather_file) + '"/>\n'
text = text + '<District>\n'

### starts Exercise 1.4 Write the Horizon part ###

df_hor = pd.read_csv(horizon_file_path, sep='\t', header=None)
df_hor.columns =['phi', 'theta']
hor = '<FarFieldObstructions>' + os.linesep
for r in df_hor.index:
    if df_hor.phi.iloc[r]<0:
        row = f'<Point phi="{360+df_hor.phi.iloc[r]}"  theta="{df_hor.theta.iloc[r]}"/>' + os.linesep
    else:
        row = f'<Point phi="{df_hor.phi.iloc[r]}"  theta="{df_hor.theta.iloc[r]}"/>' + os.linesep
    hor = hor + row
hor = hor + "</FarFieldObstructions>" + os.linesep
text = text + hor

### ends Exercise 1.4 Write the Horizon part ###

# - Write the composite part
# Form the composite information
outwalls_constructiontypeid_df = building_list[['outwalls_constructiontypeid']]
outwalls_constructiontypeid_df.rename({'outwalls_constructiontypeid': 'construction_id'}, axis=1, inplace=True)
groundshell_constructiontypeid_df = building_list[['groundshell_constructiontypeid']]
groundshell_constructiontypeid_df.rename({'groundshell_constructiontypeid': 'construction_id'}, axis=1, inplace=True)
pitchedroof_constructiontypeid_df = building_list[['pitchedroof_constructiontypeid']]
pitchedroof_constructiontypeid_df.rename({'pitchedroof_constructiontypeid': 'construction_id'}, axis=1, inplace=True)
construction_id_df = pd.concat([outwalls_constructiontypeid_df, groundshell_constructiontypeid_df, pitchedroof_constructiontypeid_df])

construction_id_df = construction_id_df.merge(composite_df[['construction_id', 'construction_name', 'construction_category']], on='construction_id', how='left')
construction_id_df = construction_id_df.drop_duplicates(subset=['construction_id'])

# Merge the layer information with composites
composite_write_df = construction_id_df.merge(composite_df, how='left').merge(layer_df, how='left')

for r in construction_id_df.index:
    text = text + '<Composite id="' + str(construction_id_df["construction_id"].loc[r]) + '" name="' + str(construction_id_df["construction_name"].loc[r]) + '" category="' + str(construction_id_df["construction_category"].loc[r]) + '">\n'
    for r1 in composite_write_df.index:
        if composite_write_df["construction_id"].loc[r1] == construction_id_df["construction_id"].loc[r]:
            text = text + '<Layer Thickness="' + str(composite_write_df["thickness"].loc[r1]) + '" Conductivity="' + str(composite_write_df["therm_conductivity"].loc[r1]) + '" Cp="' + str(composite_write_df["spec_heat_capacity"].loc[r1]) + '" Density="' + str(composite_write_df["density"].loc[r1]) + '" NRE="0" GWP="0" UBP="0"/>\n'
    text = text + '</Composite>\n'

# write the terrain groundsurface composite
text = text + '<Composite id="' + str(terrain_physics_df["id"].loc[0]) + '" name="' + str(terrain_physics_df["name"].loc[0]) + '" category="' + str(terrain_physics_df["type"].loc[0]) + '">\n'
text = text + '<Layer Thickness="' + str(terrain_physics_df["thickness"].loc[0]) + '" Conductivity="' + str(terrain_physics_df["conductivity"].loc[0]) + '" Cp="' + str(terrain_physics_df["cp"].loc[0]) + '" Density="' + str(terrain_physics_df["density"].loc[0]) + '" NRE="0" GWP="0" UBP="0"/>\n'
text = text + '</Composite>\n'

# - Write the profile part
building_list[['occupancy_profile_id']].drop_duplicates(subset=['occupancy_profile_id'])

profile_write_df = building_list[['occupancy_profile_id']]
profile_write_df = profile_write_df.drop_duplicates(subset=['occupancy_profile_id'])
profile_write_df.rename({'occupancy_profile_id': 'profile_id'}, axis=1, inplace=True)
profile_write_df = profile_write_df.merge(profile_df, how='left')
profile_write_df = profile_write_df.sort_values('profile_id')

for r in profile_write_df.index:
    if profile_write_df["array_length"].loc[r] == 24:
        text = text + '<OccupancyDayProfile id="' + str(profile_write_df["profile_id"].loc[r]) + '" name="' + str(profile_write_df["description"].loc[r]) + '" ' + str(write_day(profile_write_df["values_array"].loc[r])) + '/>\n'
    else:
        text = text + '<OccupancyYearProfile id="' + str(profile_write_df["profile_id"].loc[r]) + '" name="' + str(profile_write_df["description"].loc[r]) + '" ' + str(write_year(profile_write_df["values_array"].loc[r])) + '/>\n'

# - Write the geometry part
RN = num_decimals

surface_list = []
for r in building_list.index:
    text = text + '<Building id="' + str(building_list["building_id"].loc[r]) + '" key="' + str(building_list["parent_gmlid"].loc[r]) + '" Vi="' + str(building_list["lod2_volume"].loc[r]) + '" Ninf="0.1" BlindsLambda="0.2" BlindsIrradianceCutOff="100" Simulate="true">\n'
    text = text + '<HeatTank V="' + str(heat_tank_df["volume"].loc[0]) + '" phi="' + str(heat_tank_df["phi"].loc[0]) + '" rho="' + str(heat_tank_df["rho"].loc[0]) + '" Cp="' + str(heat_tank_df["cp"].loc[0]) + '" Tmin="' + str(heat_tank_df["t_min"].loc[0]) + '" Tmax="' + str(heat_tank_df["t_max"].loc[0]) + '"/>\n'
    text = text + '<CoolTank V="' + str(cool_tank_df["volume"].loc[0]) + '" phi="' + str(cool_tank_df["phi"].loc[0]) + '" rho="' + str(cool_tank_df["rho"].loc[0]) + '" Cp="' + str(cool_tank_df["cp"].loc[0]) + '" Tmin="' + str(cool_tank_df["t_min"].loc[0]) + '" Tmax="' + str(cool_tank_df["t_max"].loc[0]) + '"/>\n'
    text = text + '<HeatSource beginDay="' + str(heat_source_df["day_begin"].loc[0]) + '" endDay="' + str(heat_source_df["day_end"].loc[0]) + '">\n'
    text = text + '<Boiler name = "' + str(heat_source_df["name"].loc[0]) + '" Pmax="' + str(heat_source_df["p_max"].loc[0]) + '" eta_th="' + str(heat_source_df["eta_th"].loc[0]) + '"/>\n'
    text = text + '</HeatSource>\n'
    text = text + '<CoolSource beginDay="' + str(cool_source_df["day_begin"].loc[0]) + '" endDay="' + str(cool_source_df["day_end"].loc[0]) + '">\n'
    text = text + '<HeatPump Pmax="' + str(cool_source_df["p_max"].loc[0]) + '" eta_tech="' + str(cool_source_df["eta_tech"].loc[0]) + '" Ttarget="' + str(cool_source_df["t_target"].loc[0]) + '" Tsource="' + str(cool_source_df["t_source"].loc[0]) + '"/>\n'
    text = text + '</CoolSource>\n'
    text = text + '<Zone id="' + str(r) + '" volume="' + str((building_list["lod2_volume"].loc[r]) * 0.8) + '" psi="0" Tmin="20" Tmax="26" groundFloor="true" nightVentilationBegin="0" nightVentilationEnd="0">\n'
    text = text + '<Occupants n="' + str(building_list["num_residents"].loc[r]) + '" sensibleHeat="90" sensibleHeatRadiantFraction="0.6" latentHeat="0" type="' + str(building_list["occupancy_profile_id"].loc[r]) + '"/>\n'
    for r1 in geometry_envelope.index:
        surface_list.append(geometry_envelope["lod2_multi_surface_id"].loc[r1])
        if geometry_envelope["objectclass_id"].loc[r1] == 34 and geometry_envelope["parent_gmlid"].loc[r1] == building_list["parent_gmlid"].loc[r]:
            text = text + '<Wall id="' + str(r1) + '" key="' + str(geometry_envelope["gmlid"].loc[r1]) + '" type="' + str(building_list["outwalls_constructiontypeid"].loc[r]) + '" ShortWaveReflectance="' + str(building_list["outwalls_shortwavereflectance"].loc[r]) + '" GlazingRatio="' + str(building_list["outwalls_windowratio"].loc[r]) + '" GlazingGValue="' + str(building_list["outwalls_glazinggvalue"].loc[r]) + '" GlazingUValue="' + str(building_list["outwalls_glazinguvalue"].loc[r]) + '" OpenableRatio="0">\n'
            v = 0
            for n in range(len(geometry_envelope["geometry"].loc[r1].exterior.coords)-1):
                text = text + '<V' + str(v) +' x="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][2], RN)) + '"/>\n'
                v = v + 1
            text = text + '</Wall>\n'
        elif geometry_envelope["objectclass_id"].loc[r1] == 36 and geometry_envelope["parent_gmlid"].loc[r1] == building_list["parent_gmlid"].loc[r]:
            text = text + '<Wall id="' + str(r1) + '" key="' + str(geometry_envelope["gmlid"].loc[r1]) + '" type="' + str(building_list["outwalls_constructiontypeid"].loc[r]) + '" ShortWaveReflectance="' + str(building_list["outwalls_shortwavereflectance"].loc[r]) + '" GlazingRatio="' + str(building_list["outwalls_windowratio"].loc[r]) + '" GlazingGValue="' + str(building_list["outwalls_glazinggvalue"].loc[r]) + '" GlazingUValue="' + str(building_list["outwalls_glazinguvalue"].loc[r]) + '" OpenableRatio="0">\n'
            v = 0
            for n in range(len(geometry_envelope["geometry"].loc[r1].exterior.coords)-1):
                text = text + '<V' + str(v) +' x="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][2], RN)) + '"/>\n'
                v = v + 1
            text = text + '</Wall>\n'
        elif geometry_envelope["objectclass_id"].loc[r1] == 35 and geometry_envelope["parent_gmlid"].loc[r1] == building_list["parent_gmlid"].loc[r]:
            text = text + '<Floor id="' + str(r1) + '" key="' + str(geometry_envelope["gmlid"].loc[r1]) + '" type="' + str(building_list["groundshell_constructiontypeid"].loc[r]) + '" ShortWaveReflectance="' + str(building_list["groundshell_shortwavereflectance"].loc[r]) + '" GlazingRatio="' + str(building_list["groundshell_windowratio"].loc[r]) + '" GlazingGValue="0" GlazingUValue="0" OpenableRatio="0">\n'
            v = 0
            for n in range(len(geometry_envelope["geometry"].loc[r1].exterior.coords)-1):
                text = text + '<V' + str(v) +' x="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][2], RN)) + '"/>\n'
                v = v + 1
            text = text + "</Floor>\n"
        elif geometry_envelope["objectclass_id"].loc[r1] == 33 and geometry_envelope["parent_gmlid"].loc[r1] == building_list["parent_gmlid"].loc[r]:
            text = text + '<Roof id="' + str(r1) + '" key="' + str(geometry_envelope["gmlid"].loc[r1]) + '" type="' + str(building_list["pitchedroof_constructiontypeid"].loc[r]) + '" ShortWaveReflectance="' + str(building_list["pitchedroof_shortwavereflectance"].loc[r]) + '" GlazingRatio="' + str(building_list["pitchedroof_windowratio"].loc[r]) + '" GlazingGValue="' + str(building_list["pitchedroof_glazinggvalue"].loc[r]) + '" GlazingUValue="' + str(building_list["pitchedroof_glazinguvalue"].loc[r]) + '" OpenableRatio="0" kFactor="0">\n'
            v = 0
            for n in range(len(geometry_envelope["geometry"].loc[r1].exterior.coords)-1):
                text = text + '<V' + str(v) +' x="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(geometry_envelope["geometry"].loc[r1].exterior.coords[n][2], RN)) + '"/>\n'
                v = v + 1
            text = text + '</Roof>\n'
    text = text + '</Zone>\n'
    text = text + '</Building>\n'

# - Write the ShadingSurface part

text = text + '<ShadingSurface>\n'
for r1 in shading_list.index:
    text = text + '<Surface id="' + str(r1) + '" ShortWaveReflectance="0.2">\n'
    v = 0
    for n in range(len(shading_list["geometry"].loc[r1].exterior.coords)-1):
        text = text + '<V' + str(v) +' x="' + str(round(shading_list["geometry"].loc[r1].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(shading_list["geometry"].loc[r1].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(shading_list["geometry"].loc[r1].exterior.coords[n][2], RN)) + '"/>\n'
        v = v + 1
    text = text + '</Surface>\n'
text = text + '</ShadingSurface>\n'

# - Write the Tree part
text = text + '<Trees>\n'
for r in tree_envelope.index:
    text = text + '<Tree id="' + str(tree_envelope["co_id"].loc[r]) + '" name="' + str(tree_physics_df["name"].loc[0]) + '" leafAreaIndex="' + str(tree_physics_df["leaf_area_index"].loc[0]) + '" leafWidth="' + str(tree_physics_df["leaf_width"].loc[0]) + '" leafDistance="' + str(tree_physics_df["leaf_distance"].loc[0]) + '" deciduous="false">\n'
    for i in range(len(tree_envelope["geom"].loc[r].geoms)):
        text = text + '<Leaf id="' + str(tree_envelope["co_id"].loc[r]) + '" ShortWaveReflectance="' + str(tree_physics_df["short_wave_reflectance"].loc[0]) + '" LongWaveEmissivity="' + str(tree_physics_df["long_wave_emissivity"].loc[0]) + '">\n'
        v = 0
        for n in range(len(tree_envelope["geom"].loc[r].geoms[i].exterior.coords)-1 ):
            text = text + '<V' + str(v) +' x="' + str(round(tree_envelope["geom"].loc[r].geoms[i].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(tree_envelope["geom"].loc[r].geoms[i].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(tree_envelope["geom"].loc[r].geoms[i].exterior.coords[n][2], RN)) + '"/>\n'
            v = v + 1
        text = text + '</Leaf>\n'
    text = text + '</Tree>\n'
text = text + '</Trees>\n'

## - Write the Terrain part

text = text + '<GroundSurface>\n'
for r in retri_df.index:
    text = text + '<Ground id="' + str(retri_df["id"].loc[r]) + '" key="' + str(retri_df["gmlid"].loc[r]) + '" ShortWaveReflectance="' + str(terrain_physics_df["short_wave_reflectance"].loc[0]) + '" type="' + str(terrain_physics_df["id"].loc[0]) + '" kFactor="' + str(terrain_physics_df["k_factor"].loc[0]) + '" detailedSimulation="true">\n'
    v = 0
    for n in range(len(retri_df['geometry'].loc[r].exterior.coords)-1):
        text = text + '<V' + str(v) +' x="' + str(round(retri_df['geometry'].loc[r].exterior.coords[n][0] - float(x_min_selection), RN)) + '" y="' + str(round(retri_df['geometry'].loc[r].exterior.coords[n][1] - float(y_min_selection), RN)) + '" z="' + str(round(retri_df['geometry'].loc[r].exterior.coords[n][2], RN)) + '"/>\n'
        v = v + 1
    text = text + '</Ground>\n'
text = text + '</GroundSurface>\n'
text = text + '</District>\n'
text = text + '</CitySim>\n'

## - Finishing CitySIM XML file
text = text + '</District>\n'
text = text + '</CitySim>\n'
xml_file = open(output_citysimfile, "w")
xml_file.write(text)
xml_file.close()

time_delta(time_start)
