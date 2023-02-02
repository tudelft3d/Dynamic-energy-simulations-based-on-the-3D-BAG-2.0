import pandas as pd
import math
import pytz
from timezonefinder import TimezoneFinder
import datetime
pd.options.mode.chained_assignment = None  # default='warn'
import os
import sys

folder = os.path.dirname(os.path.abspath(__file__))
os.chdir(folder)

### Data location:
# 1- Uses a relative path from the current location of this script.
# 2- The file downloaded from https://climate.onebuilding.org/ must be stored in folder \data.
# 3- variable input_epw requires the relative path to the epw downloaded file.
# 4- Resulting CLI fill be stored in the data folder.

inputFolder = "Data"
outputFolder = os.path.join(os.path.dirname(folder),inputFolder)

input_epw = 'Weather_Sample/NLD_OV_Heino.062780_TMYx.2007-2021.epw'
full_path = os.path.join(outputFolder,input_epw)

print(f"input EPW file exits: {os.path.exists(full_path)}")

def get_local_etc_timezone(latitude, longitude):
    # get the time zone at the given coordinates
    tf = TimezoneFinder()
    time = pytz.timezone(tf.timezone_at(lng=longitude, lat=latitude)).localize(
        datetime.datetime(2011, 1, 1)).strftime('%z')

    # invert sign and return in 'Etc/GMT' format
    if time[0] == '+':
        time_zone = '+' + time[2]
    else:
        time_zone = '-' + time[2]

    return time_zone

epw_cols = ['Year','Month','Day','Hour','Minute','Data Source and Uncertainty Flags','Dry Bulb Temperature','Dew Point Temperature','Relative Humidity','Atmospheric Station Pressure','Extraterrestrial Horizontal Radiation','Extraterrestrial Direct Normal Radiation','Horizontal Infrared Radiation Intensity','Global Horizontal Radiation','Direct Normal Radiation','Diffuse Horizontal Radiation','Global Horizontal Illuminance','Direct Normal Illuminance','Diffuse Horizontal Illuminance','Zenith Luminance','Wind Direction','Wind Speed','Total Sky Cover','Opaque Sky Cover (used if Horizontal IR Intensity missing)','Visibility','Ceiling Height','Present Weather Observation','Present Weather Codes','Precipitable Water','Aerosol Optical Depth','Snow Depth','Days Since Last Snowfall','Albedo','Liquid Precipitation Depth','Liquid Precipitation Quantity']
df_epw = pd.DataFrame(columns=epw_cols)

#EPW variables and dataframe creation
#Reads the header with the location of the weather station (line 0) and then collects the weather data and save they in a pandas dataframe (after line 7)
count_line = 0
with open (full_path, 'rt') as myfile:
    for myline in myfile:
        if count_line == 0:
            myline = myline.strip()
            initial = myline.split(",")
            loc = initial[0]
            city = initial[1]
            stateProv = initial[2]
            country = initial[3]
            dataType = initial[4]
            WMOCode = initial[5]
            latitude = float(initial[6].strip())
            longitude = float(initial[7].strip())
            TZ = float(initial[8].strip())
            altitude = float(initial[9])
        elif count_line>7:
            myline = myline.strip()
            initial = myline.split(",")
            df_length = len(df_epw)
            df_epw.loc[df_length] = initial
        count_line +=1

dm = ['dm']
df_dm = pd.DataFrame(columns=dm)

df_citysim = pd.DataFrame().assign(dm=df_epw['Day'], m=df_epw['Month'], h=df_epw['Hour'], G_Dh=df_epw['Diffuse Horizontal Radiation'], G_Bn=df_epw['Direct Normal Radiation'], Ta=df_epw['Dry Bulb Temperature'], Ts=df_epw['Dry Bulb Temperature'], FF=df_epw['Wind Speed'], DD=df_epw['Wind Direction'], RH=df_epw['Relative Humidity'], RR=df_epw['Liquid Precipitation Depth'], N=df_epw['Total Sky Cover'].astype(float)*.8)

header_1 = city
header_2 = str(latitude)+ "," +str(longitude)+ "," + str(altitude)+ ","  + str(get_local_etc_timezone(latitude, longitude))

output = os.path.join(outputFolder,f"{header_1}.cli")

with open(output, "w") as outfile:
    outfile.write(header_1)
    outfile.write("\n")
    outfile.write(header_2)
    outfile.write("\n")
    outfile.write("\n")
df_citysim.to_csv(output, mode='a', index=False, header=True, sep='\t', float_format='%g')

print(f"The script finishes. File {header_1}.cli was created")