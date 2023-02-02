import warnings
import uuid
import sqlalchemy as sqla
import psycopg2
from psycopg2.extensions import register_adapter, AsIs
import pandas as pd
pd.options.mode.chained_assignment = None  # default='warn'
import sys
import numpy as np
import os
import re
from datetime import datetime

time_start = datetime.now()
print(f'starting time: {time_start}')

folder = os.path.dirname(os.path.abspath(__file__))
os.chdir(folder)


def addapt_numpy_float64(numpy_float64):
    return AsIs(numpy_float64)
def addapt_numpy_int64(numpy_int64):
    return AsIs(numpy_int64)
register_adapter(np.float64, addapt_numpy_float64)
register_adapter(np.int64, addapt_numpy_int64)

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

time_start = datetime.now()
print(f'starting time: {time_start}')

#### Global variables definition ####
# refurbishmentScenario = 'statusQuo'
# refurbishmentScenario = 'mediumRefurb'
refurbishmentScenario = 'advRefurb'
country = 'NL'
profilesType='default'
weather_file = 'Heino_EPW.cli'
input_city = 'Rijssen'
num_decimals = 3
EPSG = 28992
month_31 = 24*31
month_30 = 24*30
february = 24*28
uom_kW = 1000
uom_MW = 1000000
uom_ed_h = 'Wh'
uom_ed_d = 'Wh'
uom_ed_m = 'kWh'
uom_ed_y = 'MWh'
uom_sumed_a = 'MWh/a'
weatherData_type = 'surface shortwave reflectance'
citySim_v = 'Build Apr 21 2022 @ 17:58:04'
usable_area_ratio = 0.75

#### Database connection parameters, uncomment your parameters: ####

user = ''
password = ''
host = ''
port = 5432
dbname = ''
dbschema=''

db_url = f'postgresql+psycopg2://{user}:{password}@{host}:{port}/{dbname}'

residential_value = ['Residential', 'Mixed-use']
min_area = 0.1

resultsPath = os.path.join(os.path.dirname(folder),"output")
isExist = os.path.exists(resultsPath)

output_folder = 'output'
citysimfile = '{}_{}_CitySim_input_NoDTM.xml'.format(input_city,refurbishmentScenario)
full_path = os.path.join(resultsPath,citysimfile)
print(f"CitySim XML file exits: {os.path.exists(full_path)}")

heatDemandFile = '{}_TH.out'.format(citysimfile.split('.')[0])
heatDemandFile = os.path.join(resultsPath,heatDemandFile)
print(f"Heat demand TH file exits: {os.path.exists(heatDemandFile)}")

# Create the sqlalchemy engine
db_engine = sqla.create_engine(
    db_url,
    connect_args={'options': '-csearch_path={},public'.format(dbschema)}) # Searches left-to-right

db_engine2 = sqla.create_engine(
    'postgresql+psycopg2://cleon:Camilo.2022_@3dcities.bk.tudelft.nl:5810/library')

# Test connection
try:
    db_connection = db_engine.connect()
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

# Read the results - Qs value from TH file
out_df = pd.read_csv(heatDemandFile,  sep='\t') # change file name
qs_cols = [col for col in out_df.columns if 'Qs' in col]
qs_df = pd.read_csv(heatDemandFile,  sep='\t', usecols=qs_cols)

# Change column names
old_name = []
new_name = []
for column in qs_df:
    old_name.append(column)
for i in old_name:
    result = re.search(r"\((.*)\):", i)
    new_name.append(result.group(1))
qs_df.columns = new_name

building_list = list(qs_df)
building_list.sort()

data = []
for i in building_list:
    huuid = uuid.uuid4().hex
    muuid = uuid.uuid4().hex
    yuuid = uuid.uuid4().hex
    tem1 = [50006, 'HeatingDemand_' + i + "_"+ huuid, refurbishmentScenario + "_HeatingDemandTimeSeries_hourly", f'Hourly energy demand, calculated using the {refurbishmentScenario} scenario; using CitySIM {citySim_v}']
    data.append(tem1)
    tem2 = [50033, 'HeatingDemandTimeSeries_' + i + "_"+ huuid, refurbishmentScenario + "_HeatingDemandTimeSeries_hourly",  f'Hourly energy demand values']
    data.append(tem2)
    tem3 = [50006, 'HeatingDemand_' + i + "_"+ muuid, refurbishmentScenario + "_HeatingDemand_" + 'monthly',  f'Monthly energy demand, calculated using the {refurbishmentScenario} scenario; using CitySIM {citySim_v}']
    data.append(tem3)
    tem4 = [50033, 'HeatingDemandTimeSeries_' + i + "_"+ muuid, refurbishmentScenario + "_HeatingDemandTimeSeries_monthly",  f'Monthly energy demand values']
    data.append(tem4)
    tem5 = [50006, 'HeatingDemand_' + i + "_"+ yuuid, refurbishmentScenario + "_HeatingDemand_yearly", f'Yearly energy demand, calculated using the {refurbishmentScenario} scenario; using CitySIM {citySim_v}']
    data.append(tem5)
    tem6 = [50033, 'HeatingDemandTimeSeries_' + i + "_"+ yuuid, refurbishmentScenario + "_HeatingDemandTimeSeries_yearly",  f'Yearly energy demand value']
    data.append(tem6)

df_cityobject = pd.DataFrame(data, columns = ['objectclass_id', 'gmlid', 'name', 'description'])

if len(building_list)<2:
    t_gmlid = f"('{building_list[0]}')"
else:
    t_gmlid = tuple(building_list)
building_area_df = pd.read_sql_query(f"select z.id as cityobject_id, sum(z.footprint_area) as footprint_area from (select CASE datatype WHEN 6 THEN cg.realval END AS footprint_area, c.gmlid as surface_gmlid,  b.id, b.gmlid from {dbschema}.cityobject c inner join {dbschema}.cityobject_genericattrib cg on c.id = cg.cityobject_id left join {dbschema}.thematic_surface ts on c.id = ts.id left join (select id, gmlid from {dbschema}.cityobject where objectclass_id = 26)b on ts.building_id = b.id left join {dbschema}.surface_geometry sg on ts.id = sg.parent_id where cg.attrname = 'lod2_area' and c.gmlid like '%%GroundSurface_%%' and b.gmlid in {t_gmlid} )z group by z.id, z.gmlid;", db_engine)
building_storeys_df = pd.read_sql_query(f"select b.id as cityobject_id, (coalesce(b.storeys_above_ground, 0) + coalesce(b.storeys_below_ground, 0))::int as total_storeys from {dbschema}.cityobject c inner join {dbschema}.building b on b.id = c.id where c.gmlid in {t_gmlid};", db_engine)

#Creating the CityObjects in the database
df_cityobject.to_sql(name='cityobject', con = db_engine, if_exists='append', index=False)
filter_str = 'HeatingDemandTimeSeries_' + i + "_"+ huuid, refurbishmentScenario + "_HeatingDemandTimeSeries_"
df_ng_timeseries = pd.read_sql_query(f"SELECT cityobject.id, cityobject.objectclass_id FROM {dbschema}.cityobject WHERE cityobject.objectclass_id = 50033", db_engine)
df_ng_timeseries0 = pd.read_sql_query(f"SELECT nt.id, nt.objectclass_id FROM {dbschema}.ng_timeseries nt", db_engine)

df_ng_timeseries = df_ng_timeseries[~df_ng_timeseries.id.isin(df_ng_timeseries0.id)]
df_ng_timeseries["timevaluesprop_acquisitionme"] = 'simulation'
df_ng_timeseries["timevaluesprop_interpolation"] = 'constantInPrecedingInterval'

df_ng_timeseries.to_sql(name='ng_timeseries', con = db_engine, if_exists='append', index=False)

df_ng_regulartimeseries = pd.read_sql_query(f"SELECT  c.id, c.gmlid, c.name  FROM {dbschema}.cityobject c WHERE c.objectclass_id = 50033 and c.name like '%%{refurbishmentScenario}_HeatingDemand_%%' order by 1", db_engine)
df_ng_regulartimeseries["timeinterval"] = 1
df_ng_regulartimeseries["timeinterval_unit"] = None
df_ng_regulartimeseries["values_"] = None
df_ng_regulartimeseries["values_uom"] = None
df_ng_regulartimeseries["timeperiodprop_beginposition"] = '2022-01-01 00:00:00'
df_ng_regulartimeseries["timeperiodproper_endposition"] = '2022-12-31 11:59:59'
for i in df_ng_regulartimeseries.index:
    if df_ng_regulartimeseries['name'].loc[i] == f"{refurbishmentScenario}_HeatingDemandTimeSeries_hourly":
        df_ng_regulartimeseries["timeinterval_unit"].loc[i] = 'hour'
        df_ng_regulartimeseries["values_uom"].loc[i] = 'Wh'
    elif df_ng_regulartimeseries['name'].loc[i] == f"{refurbishmentScenario}_HeatingDemandTimeSeries_monthly":
        df_ng_regulartimeseries["timeinterval_unit"].loc[i] = 'year'
        df_ng_regulartimeseries["timeinterval"].loc[i] = 0.0833334
        df_ng_regulartimeseries["values_uom"].loc[i] = 'kWh'
    elif df_ng_regulartimeseries['name'].loc[i] == f"{refurbishmentScenario}_HeatingDemandTimeSeries_yearly" :
        df_ng_regulartimeseries["timeinterval_unit"].loc[i] = 'year'
        df_ng_regulartimeseries["values_uom"].loc[i] = 'MWh'

df_ng_regulartimeseries = df_ng_regulartimeseries.drop(columns=['gmlid'])

genericattrib_anualdemand = []
attrname = f"{refurbishmentScenario}_yearly_heating_demand_citysim"
datatype = 6
columnvalue = 'realval'
# extract the simulation result value
m = 0
for i in building_list:
    for column in qs_df:
        if i == column:
            january = qs_df[column].mask(qs_df[column]<0, 0).values[0:744].sum()/uom_kW
            february = qs_df[column].mask(qs_df[column]<0, 0).values[744:1416].sum()/uom_kW
            march = qs_df[column].mask(qs_df[column]<0, 0).values[1416:2160].sum()/uom_kW
            april = qs_df[column].mask(qs_df[column]<0, 0).values[2160:2880].sum()/uom_kW
            may = qs_df[column].mask(qs_df[column]<0, 0).values[2880:3624].sum()/uom_kW
            june = qs_df[column].mask(qs_df[column]<0, 0).values[3624:4344].sum()/uom_kW
            july = qs_df[column].mask(qs_df[column]<0, 0).values[4344:5088].sum()/uom_kW
            august = qs_df[column].mask(qs_df[column]<0, 0).values[5088:5832].sum()/uom_kW
            september = qs_df[column].mask(qs_df[column]<0, 0).values[5832:6552].sum()/uom_kW
            october = qs_df[column].mask(qs_df[column]<0, 0).values[6552:7296].sum()/uom_kW
            november = qs_df[column].mask(qs_df[column]<0, 0).values[7296:8016].sum()/uom_kW
            december = qs_df[column].mask(qs_df[column]<0, 0).values[8016:].sum()/uom_kW

            hour_value = ''
            for q in qs_df[column].values:
                hour_value = hour_value + str(q) + ' '
            hour_value = hour_value[:-1]
            month_value = f'{january} {february} {march} {april} {may} {june} {july} {august} {september} {october} {november} {december}'
            year_value = str(round(qs_df[column][qs_df[column]>0].sum() / uom_MW,2))

            row_df = [attrname, datatype, year_value,uom_sumed_a, column]
            genericattrib_anualdemand.append(row_df)

            df_ng_regulartimeseries["values_"].loc[m] = hour_value
            m = m + 1
            df_ng_regulartimeseries["values_"].loc[m] = month_value
            m = m + 1
            df_ng_regulartimeseries["values_"].loc[m] = year_value
            m = m + 1


df_ng_regulartimeseries = df_ng_regulartimeseries.drop(columns=['name'])

df_ng_regulartimeseries.to_sql(name='ng_regulartimeseries', con = db_engine, if_exists='append', index=False)

df_genericattrib_anualdemand = pd.DataFrame(genericattrib_anualdemand, columns = ['attrname', 'datatype', 'realval' ,'unit', 'gmlid'])
df_buildings = pd.read_sql_query(f"SELECT c.gmlid, c.id as cityobject_id FROM {dbschema}.cityobject c WHERE c.objectclass_id = 26", db_engine)
df_genericattrib_anualdemand = df_genericattrib_anualdemand.merge(df_buildings, how='left')
del df_genericattrib_anualdemand['gmlid']
df_genericattrib_anualdemand.to_sql(name='cityobject_genericattrib', con = db_engine, if_exists='append', index=False)

with db_engine.connect() as con:
    for i in df_genericattrib_anualdemand.index:
        statement = f"""update cityobject_genericattrib set root_genattrib_id = id where root_genattrib_id is null and attrname = '{df_genericattrib_anualdemand["attrname"].loc[i]}' and datatype={df_genericattrib_anualdemand["datatype"].loc[i]} and realval = {df_genericattrib_anualdemand["realval"].loc[i]} and unit='{df_genericattrib_anualdemand["unit"].loc[i]}' and cityobject_id ={df_genericattrib_anualdemand["cityobject_id"].loc[i]}  """
        con.execute(statement)

# Building's Energy class definition

df_genericattrib_class = df_genericattrib_anualdemand.copy()
df_energy_class = pd.read_sql_query("select * from building.energy_class;", db_engine2)
df_energy_class_residential = df_energy_class[df_energy_class['function']=='Residential']
df_buildings_fp = pd.read_sql_query(f"select cg.realval as footprint_area, cg.cityobject_id from {dbschema}.cityobject c inner JOIN {dbschema}.cityobject_genericattrib cg on c.id = cg.cityobject_id where cg.attrname = 'footprint_area';", db_engine)
if df_buildings_fp.shape[0] == 0:
    df_buildings_fp = building_area_df.copy()
    df_buildings_fp['footprint_area'] = df_buildings_fp['footprint_area'].apply(lambda x: x*usable_area_ratio)
else:
    df_buildings_fp['footprint_area'] = df_buildings_fp['footprint_area'].apply(lambda x: x*usable_area_ratio)

df_genericattrib_class.realval =  df_genericattrib_class.apply(lambda row: float(row.realval)*(uom_MW/uom_kW), axis=1)
df_genericattrib_class['unit'] = uom_ed_m
df_genericattrib_class = df_genericattrib_class.merge(df_buildings_fp, how='left')
df_genericattrib_class = df_genericattrib_class.merge(building_storeys_df, how='left')
df_genericattrib_class['ng_yearly_ratio'] = df_genericattrib_class.apply(lambda row: row.realval/(row.footprint_area*row.total_storeys), axis=1)
df_genericattrib_class['strval'] = ""

for i in df_genericattrib_class.index:
    value = df_genericattrib_class['ng_yearly_ratio'].loc[i]
    for j in df_energy_class_residential.index:
        value_from = df_energy_class_residential['value_from'].loc[j]
        value_to = df_energy_class_residential['value_to'].loc[j]
        ng_class = df_energy_class_residential['label'].loc[j]
        if value_from < value <= value_to:
            df_genericattrib_class['strval'].loc[i] = ng_class
        else:
            pass

df_genericattrib_class['unit'] = 'kWh/(m2.a)'
df_genericattrib_class['attrname'] = f'energy_label_{refurbishmentScenario}'
df_genericattrib_class['datatype'] = 1

df_genericattrib_class[['attrname','datatype','strval','cityobject_id','unit']].to_sql(name='cityobject_genericattrib', con = db_engine, if_exists='append', index=False)

with db_engine.connect() as con:
    for i in df_genericattrib_anualdemand.index:
        statement = f"""update cityobject_genericattrib set root_genattrib_id = id where root_genattrib_id is null and attrname = '{df_genericattrib_class["attrname"].loc[i]}' and datatype={df_genericattrib_class["datatype"].loc[i]} and strval = '{df_genericattrib_class["strval"].loc[i]}' and unit='{df_genericattrib_class["unit"].loc[i]}' and cityobject_id ={df_genericattrib_class["cityobject_id"].loc[i]}  """
        con.execute(statement)

# simulated buildings
df_bldg_labels_0 = pd.read_sql_query(f"select distinct cg.strval, cg.cityobject_id from {dbschema}.cityobject_genericattrib cg where cg.attrname = 'energy_label_{refurbishmentScenario}';", db_engine)

if len(building_list)<2:
    buildings = f"('{building_list[0]}')"
else:
    buildings = tuple(building_list)
# Buildings in area of interest
df_bldg_envelope =  pd.read_sql_query(f"select st_xmin(geom) as xmin , st_ymin(geom) as ymin, st_xmax(geom) as xmax, st_ymax(geom) as ymax from (select ST_Extent(st_force2d(envelope)) as geom  from {dbschema}.cityobject c where c.gmlid in {buildings})g", db_engine)
xmin, ymin, xmax, ymax = df_bldg_envelope.xmin.iloc[0], df_bldg_envelope.ymin.iloc[0], df_bldg_envelope.xmax.iloc[0], df_bldg_envelope.ymax.iloc[0]
df_bldg_labels = pd.read_sql_query(f"select distinct c.id as cityobject_id from {dbschema}.thematic_surface as ts inner JOIN {dbschema}.surface_geometry as sg ON ts.lod2_multi_surface_id = sg.parent_id inner JOIN {dbschema}.cityobject as c ON ts.building_id = c.id where ST_Force2D(c.envelope) && ST_MakeEnvelope({xmin}, {ymin}, {xmax}, {ymax}, {EPSG});", db_engine)
df_bldg_labels = df_bldg_labels.merge(df_bldg_labels_0, how='left')
df_bldg_labels.strval = df_bldg_labels.strval.fillna('None')

df_surfaces = pd.read_sql_query(f"select sg.id, sg.gmlid, c.gmlid as gml_parent_id, c.id as cityobject_id from {dbschema}.thematic_surface as ts inner JOIN {dbschema}.surface_geometry as sg ON ts.lod2_multi_surface_id = sg.parent_id inner JOIN {dbschema}.cityobject as c ON ts.building_id = c.id where ST_Force2D(c.envelope) && ST_MakeEnvelope({xmin}, {ymin}, {xmax}, {ymax}, {EPSG});", db_engine)

# adding a None label appearance class
new_row = {'label':'None', 'r_value':255.0, 'g_value':255.0, 'b_value':255.0}
df_energy_class_residential = df_energy_class_residential.append(new_row, ignore_index=True)

#Preparing data
df_energy_class_residential = df_energy_class_residential.rename(columns={"label":"strval"})
df_energy_class_residential['x3d_diffuse_color'] = df_energy_class_residential.apply(lambda row: f'{round(row.r_value/255,6)} {round(row.g_value/255,6)} {round(row.b_value/255,6)}', axis=1)

# Merge dataframes, buildings, label, rgb composition
df_bldg_labels = df_bldg_labels.merge(df_energy_class_residential[['strval','x3d_diffuse_color']], how='left')

# Adding Appearance feature in the DB
data = []

appereance_gmlid = f'heating_demand_class_{refurbishmentScenario}'
df_appereance = pd.read_sql_query(f"select a.id, a.gmlid, a.name, a.description from {dbschema}.appearance a where gmlid = '{appereance_gmlid}' ", db_engine)

if df_appereance.shape[0]==0:
    tem = [appereance_gmlid,f'Energy label for heating demand {refurbishmentScenario}', f'This appearance defines the colour theme of simulated buildings using {refurbishmentScenario} scenario with the the energy labels for residential buildings in The Netherlands', f'Heating demand label {refurbishmentScenario}']
    data.append(tem)

    df_appereance = pd.DataFrame(data, columns = ['gmlid', 'name', 'description', 'theme'])
    df_appereance.to_sql(name='appearance', con = db_engine, if_exists='append', index=False)
    df_appereance = pd.read_sql_query(f"select a.id, a.gmlid, a.name, a.description from {dbschema}.appearance a where gmlid = '{appereance_gmlid}' ", db_engine)

classes_list = ['A++++','A+++', 'A++', 'A+', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'None']
data = []
x3dmaterial_objclass = 53
x3d_transparency = 0.3
for i in classes_list:
    if i == 'None':
        x3d_diffuse_color = df_energy_class_residential['x3d_diffuse_color'][df_energy_class_residential['strval'] == i]
        x3d_diffuse_color = [str(x) for x in x3d_diffuse_color][0]
        tem_front = [f'{refurbishmentScenario}_HeatingDemand_None_FRONT',f'{refurbishmentScenario}. No energy label {i} FRONT', f'This appearance defines the colour for not labeled buildings in The Netherlands',1, x3dmaterial_objclass, x3d_transparency, x3d_diffuse_color, 0]
        tem_back = [f'{refurbishmentScenario}_HeatingDemand_None_BACK',f'{refurbishmentScenario}. No energy label {i} BACK', f'This appearance defines the colour for not labeled buildings in The Netherlands', 0, x3dmaterial_objclass, x3d_transparency, x3d_diffuse_color, 0]
        data.append(tem_front)
        data.append(tem_back)
    else:
        x3d_diffuse_color = df_energy_class_residential['x3d_diffuse_color'][df_energy_class_residential['strval'] == i]
        x3d_diffuse_color = [str(x) for x in x3d_diffuse_color][0]
        tem_front = [f'{refurbishmentScenario}_HeatingDemand_{i}_FRONT',f'{refurbishmentScenario}. Residential energy class {i} FRONT', f'This appearance defines the colour of the energy class {i} for residential buildings in The Netherlands',1, x3dmaterial_objclass, x3d_transparency, x3d_diffuse_color, 0]
        tem_back = [f'{refurbishmentScenario}_HeatingDemand_{i}_BACK',f'{refurbishmentScenario}. Residential energy class {i} BACK', f'This appearance defines the colour of the energy class {i} for residential buildings in The Netherlands', 0, x3dmaterial_objclass, x3d_transparency, x3d_diffuse_color, 0]
        data.append(tem_front)
        data.append(tem_back)

df_surface_data = pd.DataFrame(data, columns = ['gmlid', 'name', 'description', 'is_front', 'objectclass_id', 'x3d_transparency','x3d_diffuse_color', 'x3d_is_smooth'])
df_surface_data.to_sql(name='surface_data', con = db_engine, if_exists='append', index=False)
df_surface_data = pd.read_sql_query(f"select sd.id, sd.gmlid, sd.name, sd.description, sd.is_front, sd.objectclass_id, sd.x3d_diffuse_color, sd.x3d_is_smooth from {dbschema}.surface_data sd where gmlid like '%%{refurbishmentScenario}_HeatingDemand_%%'", db_engine)
df_surface_data['strval'] = df_surface_data['gmlid'].apply(lambda x: x.split('_')[-2])

appereance_var = df_appereance['id'][df_appereance['gmlid'] == appereance_gmlid]
appereance_var = [x for x in appereance_var][0]
df_surface_data['appearance_id'] = appereance_var
df_surface_data = df_surface_data.rename(columns={"id":"surface_data_id"})

df_surface_data[['surface_data_id', 'appearance_id']].to_sql(name='appear_to_surface_data', con = db_engine, if_exists='append', index=False)
df_surface_appearance = pd.read_sql_query(f"select atsd.* from {dbschema}.appear_to_surface_data atsd where atsd.appearance_id = {appereance_var}", db_engine)

df_surfaces = df_surfaces.merge(df_bldg_labels, how='left')
df_surfaces = df_surfaces.merge(df_surface_data[['strval','surface_data_id']], how='inner')
df_surfaces['is_texture_parametrization'] = 0
df_surfaces['surface_geometry_id'] = df_surfaces['id']
df_surfaces[['surface_geometry_id', 'is_texture_parametrization', 'surface_data_id']]
df_surfaces[['surface_geometry_id', 'is_texture_parametrization', 'surface_data_id']].drop_duplicates().to_sql(name='textureparam', con = db_engine, if_exists='append', index=False)

df_ng_timeseries = pd.read_sql_query(f"SELECT cityobject.id, cityobject.objectclass_id FROM {dbschema}.cityobject WHERE cityobject.objectclass_id = 50033 and cityobject.name like '%%{refurbishmentScenario}_HeatingDemand_%%' ", db_engine)

# update ng_cityobject table
df_ng_cityobject = pd.read_sql_query(f"select c.id from {dbschema}.cityobject c where gmlid in {t_gmlid} ", db_engine)
df_ng_cityobject0 = pd.read_sql_query(f"SELECT nc.id FROM {dbschema}.ng_cityobject nc", db_engine)
df_ng_cityobject_update = df_ng_cityobject[~df_ng_cityobject.id.isin(df_ng_cityobject0.id)]

new_ng_cityobjects = df_ng_cityobject_update.shape[0]
print(f'Number of new ng_cityobjects: {new_ng_cityobjects}')

if new_ng_cityobjects > 0:
    df_ng_cityobject_update.to_sql(name='ng_cityobject', con = db_engine, if_exists='append', index=False)

df_ng_energydemand = pd.read_sql_query(f"SELECT cityobject.id FROM {dbschema}.cityobject WHERE cityobject.objectclass_id = 50006 and cityobject.name like '%%{refurbishmentScenario}_HeatingDemand_%%' ", db_engine)
df_ng_energydemand["cityobject_demands_id"] = None
df_ng_energydemand["enduse"] = 'spaceHeating'
df_ng_energydemand["energyamount_id"] = None
cityobject_demands_id = []
for i in df_ng_cityobject.index:
    cityobject_demands_id.append(df_ng_cityobject['id'].loc[i])
    cityobject_demands_id.append(df_ng_cityobject['id'].loc[i])
    cityobject_demands_id.append(df_ng_cityobject['id'].loc[i])


for i in df_ng_energydemand.index:
    df_ng_energydemand['energyamount_id'].loc[i] = df_ng_energydemand['id'].loc[i] + 1
    df_ng_energydemand['cityobject_demands_id'].loc[i] = cityobject_demands_id[i]

df_ng_energydemand.to_sql(name='ng_energydemand', con = db_engine, if_exists='append', index=False)

con = db_engine.connect()
con.close()

con = db_engine2.connect()
con.close()

time_delta(time_start)