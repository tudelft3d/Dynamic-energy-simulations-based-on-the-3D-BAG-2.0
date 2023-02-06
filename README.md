# Dynamic energy simulations based on the 3D BAG v2.0

This repository was created by Yuzhen Jin while writting his MSc Thesis in Geomatics at the TUDelft. It contains python and sql scripts to create XML CitySIM files from a 3DCityDB instance. Here you find:

## Data
- **CityGML:** three CityGML v2.0 sample datasets (DTM, Tress, Buildings) of a fictitious city named Alderam.
- **Weather_Sample** Contains a sample dataset for the weather station Heino located in The Netherlands. It was downloaded from [here](https://climate.onebuilding.org/) 
## Scripts
- Python:
    - **CLI_fileCreator.py** This script creates a valid CLI file using as input EnergyPlus Weather Data File.
    - **DATABASE_reader.ipynb** This script creates a valid CLI file using as input a database as the example provided in file **wheater_library.sql**.
    - **CitySim_XML_Generator.py** This script creates the CitySim XML file by extracting data from an 3DCityDB.

    The following image shows a simple workflow of the script.
    <p align="center" width="100%">
    <img width="80%" src="img\PythonCitySimXMLCreator.png" alt="CitySim XML file creator">
    </p>
     
    - **CitySim_EnergyDemand_Results_Storage.py** This script takes the Energy demand results from the CitySim's simulations and stores them in a 3DCityDB with Energy ADE extension installed.
- SQL:
    - **physics_library.sql** This script creates several schemas which contains relevant data for this application:
        -**Building:** construction materials, classification parameters, types of construction (TABULA). Contains the view *v_parameter* that simplifies the queries for building materials.
        - **CitySim:** heating and cooling sources, physical data for trees and terrain.
        - **Shared:** general data like the classification of surfaces by their orientation.
    - **weather_library.sql**
        - **Weather stations:** basic data of the weather parameters.
        - **Weather parameters:** weather values of specific parameters.
        - **Climate parameters:** contains standard weather parameters based on norms, for the NL they are based on the NTA8800.

<!-- ![Building Physics DB schemas](img\BuildingPhysicsDBSchemas.png) -->
A General idea of the schemas is shown in the following image.
<p align="center" width="100%">
    <img width="70%" src="img\BuildingPhysicsDBSchemas.png" alt="Building Physics DB schemas">
</p>

## Software
This repository has been developed and tested using the following:

- Python (works with v3.9 - v3.11)
- CitySim v.22.05.2022
- 3DCityDB Suite. [Link](https://github.com/3dcitydb/3dcitydb-suite)
- 3DCityDB Energy ADE extension v.2.0. [Link](https://github.com/3dcitydb/energy-ade-citydb)
- PostgreSQL (Tested in versions 10, 13, 14)
- PostGIS v3.0.1

• The physics library and weather library storage schemas along with the data can be directly installed by importing the SQL files into the database.

• The geometry GML file can be imported into the database via software 3DCityDB importer/exporter.

## Disclaimer

The script works for the provided CityGML files (yes as usual with the sample datasets...) But we have also tested the scripts with a real dataset, that is the case of the CityGML-based 3D City Model testbed for energy-related applications (Testbed4UBEM) [link](https://github.com/tudelft3d/Testbed4UBEM).

For the specifc case of Testbed4UBEM, section 6 of **CitySim_XML_Generator.py** (validation and adjustment of surfaces into convex geometries) requires further development since we have found some bugs in this part of the code but they have not been solved yet.

## Citation
If you would like to get further information of Yuzhen's work please have a look at his MSc thesis:

Jin, Y. (2022). Dynamic energy simulations based on the 3D BAG 2.0 [Technische Universiteit Delft] [link](http://resolver.tudelft.nl/uuid:3ae123bd-cae4-45b2-be48-27ffe5cab980).

