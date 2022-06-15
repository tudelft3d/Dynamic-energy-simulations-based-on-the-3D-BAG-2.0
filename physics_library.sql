-- DROP SCHEMA physics;

CREATE SCHEMA physics AUTHORIZATION postgres;

-- DROP SEQUENCE physics.profile_id_seq;

CREATE SEQUENCE physics.profile_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- physics.building_type definition

-- Drop table

-- DROP TABLE physics.building_type;

CREATE TABLE physics.building_type (
	id int4 NULL,
	"system" varchar NULL,
	country varchar NULL,
	year_initial int4 NULL,
	year_end int4 NULL,
	construction_period numrange NULL,
	building_type varchar NULL,
	"function" varchar NULL,
	"element" varchar NULL,
	"attribute" varchar NULL,
	data_type varchar NULL,
	value float8 NULL,
	uom varchar NULL,
	description varchar NULL
);


-- physics.composite definition

-- Drop table

-- DROP TABLE physics.composite;

CREATE TABLE physics.composite (
	id int4 NULL,
	"system" varchar NULL,
	country varchar NULL,
	construction_id int4 NULL,
	construction_category varchar NULL,
	construction_name varchar NULL,
	material_id int4 NULL,
	"attribute" varchar NULL,
	data_type varchar NULL,
	value float8 NULL,
	uom varchar NULL,
	description varchar NULL
);


-- physics.layer definition

-- Drop table

-- DROP TABLE physics.layer;

CREATE TABLE physics.layer (
	id int4 NULL,
	"system" varchar NULL,
	country varchar NULL,
	material_category varchar NULL,
	material_id int4 NULL,
	material_name varchar NULL,
	density float8 NULL,
	heat_capacity float8 NULL,
	conductivity float8 NULL,
	embodied_energy float8 NULL,
	embodied_carbon float8 NULL,
	disposal_energy float8 NULL,
	disposal_carbon float8 NULL,
	construction_description varchar NULL,
	disposal_description varchar NULL
);


-- physics.profile definition

-- Drop table

-- DROP TABLE physics.profile;

CREATE TABLE physics.profile (
	id serial4 NOT NULL,
	"system" varchar NULL,
	country varchar NULL,
	profile_id int4 NULL,
	profile_type varchar NULL,
	"element" varchar NULL,
	"function" varchar NULL,
	data_type varchar NULL,
	length int4 NULL,
	value _float8 NULL,
	description varchar NULL
);


-- physics."window" definition

-- Drop table

-- DROP TABLE physics."window";

CREATE TABLE physics."window" (
	id int4 NULL,
	"system" varchar NULL,
	country varchar NULL,
	window_id int4 NULL,
	window_name varchar NULL,
	u_value float8 NULL,
	g_value float8 NULL,
	glazing_number float8 NULL,
	frame_ratio float8 NULL,
	description varchar NULL
);

-- physics.heat_cool_source definition

-- Drop table

-- DROP TABLE physics.heat_cool_source;

CREATE TABLE physics.heat_cool_source (
	id int4 NULL,
	country varchar NULL,
	category varchar NULL,
	beginday int4 NULL,
	endday int4 NULL,
	"name" varchar NULL,
	pmax float8 NULL,
	eta_th float8 NULL,
	eta_tech float8 NULL,
	ttarget float8 NULL,
	tsource varchar NULL,
	description varchar NULL
);


-- physics.heat_cool_tank definition

-- Drop table

-- DROP TABLE physics.heat_cool_tank;

CREATE TABLE physics.heat_cool_tank (
	id int4 NULL,
	country varchar NULL,
	category varchar NULL,
	v float8 NULL,
	phi float8 NULL,
	rho float8 NULL,
	cp float8 NULL,
	tmin float8 NULL,
	tmax float8 NULL,
	description varchar NULL
);

-- physics.terrain_physics definition

-- Drop table

-- DROP TABLE physics.terrain_physics;

CREATE TABLE physics.terrain_physics (
	id int4 NULL,
	composite_id int4 NULL,
	"name" varchar NULL,
	category varchar NULL,
	short_wave_reflectance float8 NULL,
	k_factor float8 NULL,
	detailed_simulation varchar NULL,
	thickness float8 NULL,
	conductivity float8 NULL,
	cp float8 NULL,
	density float8 NULL
);

-- physics.tree_physics definition

-- Drop table

-- DROP TABLE physics.tree_physics;

CREATE TABLE physics.tree_physics (
	id int4 NULL,
	category varchar NULL,
	leaf_area_index float8 NULL,
	leaf_width float8 NULL,
	leaf_distance float8 NULL,
	deciduous varchar NULL,
	short_wave_reflectance float8 NULL,
	long_wave_emissivity float8 NULL
);

INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (0,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'averageStoreyHeight','float',2.3,NULL,NULL),
	 (1,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (2,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (3,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.25,NULL,NULL),
	 (4,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (5,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'outWalls_windowRatio','float',0.2,NULL,NULL),
	 (6,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'outWalls_shortWaveReflectance','float',0.3,NULL,NULL),
	 (7,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (8,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (9,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.1,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (10,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'pitchedRoof_shortWaveReflectance','float',0.2,NULL,NULL),
	 (11,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'topCeiling_windowRatio','float',0.0,NULL,NULL),
	 (12,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'topCeiling_shortWaveReflectance','float',0.2,NULL,NULL),
	 (13,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'sharedWalls_constructionTypeId','int',12.0,NULL,NULL),
	 (14,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'sharedWalls_windowRatio','float',0.0,NULL,NULL),
	 (15,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'sharedWalls_uValue','float',2.933,NULL,NULL),
	 (16,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'interiorWalls_constructionTypeId','int',11.0,NULL,NULL),
	 (17,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'interiorWalls_windowRatio','float',0.0,NULL,NULL),
	 (18,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'interiorWalls_uValue','float',7.333,NULL,NULL),
	 (19,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'intermediaryFloors_constructionTypeId','int',10.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (20,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'intermediaryFloors_windowRatio','float',0.0,NULL,NULL),
	 (21,'TABULA','NL',NULL,NULL,NULL,'SFH','residential building',NULL,'intermediaryFloors_uValue','float',2.2,NULL,NULL),
	 (22,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (23,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'outWalls_constructionTypeId','int',204.0,NULL,NULL),
	 (24,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'outWalls_windowTypeId','int',7.0,NULL,NULL),
	 (25,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'outWalls_windowRatio','float',0.17,NULL,NULL),
	 (26,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'outWalls_uValue','float',1.606,NULL,NULL),
	 (27,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'groundShell_constructionTypeId','int',132.0,NULL,NULL),
	 (28,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (29,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (30,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'groundShell_uValue','float',1.723,NULL,NULL),
	 (31,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',166.0,NULL,NULL),
	 (32,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',7.0,NULL,NULL),
	 (33,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (34,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'pitchedRoof_uValue','float',1.539,NULL,NULL),
	 (35,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',173.0,NULL,NULL),
	 (36,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'topCeiling_windowTypeId','int',7.0,NULL,NULL),
	 (37,'TABULA','NL',0,1964,'(,1964]','SFH','residential building',NULL,'topCeiling_uValue','float',1.539,NULL,NULL),
	 (38,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (39,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',155.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (40,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.33,NULL,NULL),
	 (41,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',178.0,NULL,NULL),
	 (42,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (43,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (44,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.479,NULL,NULL),
	 (45,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (46,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (47,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',213.0,NULL,NULL),
	 (48,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.234,NULL,NULL),
	 (49,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (50,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',154.0,NULL,NULL),
	 (51,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.135,NULL,NULL),
	 (52,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',177.0,NULL,NULL),
	 (53,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (54,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (55,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.263,NULL,NULL),
	 (56,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (57,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (58,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',212.0,NULL,NULL),
	 (59,'TABULA','NL',0,1964,'(,1964]','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.106,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (60,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (61,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'outWalls_constructionTypeId','int',203.0,NULL,NULL),
	 (62,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'outWalls_windowTypeId','int',5.0,NULL,NULL),
	 (63,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'outWalls_windowRatio','float',0.23,NULL,NULL),
	 (64,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'outWalls_uValue','float',1.45,NULL,NULL),
	 (65,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'groundShell_constructionTypeId','int',133.0,NULL,NULL),
	 (66,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (67,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (68,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'groundShell_uValue','float',2.327,NULL,NULL),
	 (69,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',165.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (70,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',5.0,NULL,NULL),
	 (71,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (72,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'pitchedRoof_uValue','float',0.893,NULL,NULL),
	 (73,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',172.0,NULL,NULL),
	 (74,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'topCeiling_windowTypeId','int',5.0,NULL,NULL),
	 (75,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building',NULL,'topCeiling_uValue','float',0.893,NULL,NULL),
	 (76,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (77,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (78,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (79,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',221.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (80,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (81,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (82,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.291,NULL,NULL),
	 (83,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (84,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (85,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (86,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (87,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (88,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (89,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (90,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',220.0,NULL,NULL),
	 (91,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (92,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (93,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.219,NULL,NULL),
	 (94,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (95,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (96,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (97,'TABULA','NL',1965,1974,'[1965,1974]','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (98,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (99,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (100,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'outWalls_constructionTypeId','int',202.0,NULL,NULL),
	 (101,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL),
	 (102,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'outWalls_windowRatio','float',0.21,NULL,NULL),
	 (103,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'outWalls_uValue','float',0.643,NULL,NULL),
	 (104,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'groundShell_constructionTypeId','int',127.0,NULL,NULL),
	 (105,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (106,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (107,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'groundShell_uValue','float',0.643,NULL,NULL),
	 (108,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',164.0,NULL,NULL),
	 (109,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (110,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (111,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'pitchedRoof_uValue','float',0.639,NULL,NULL),
	 (112,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',171.0,NULL,NULL),
	 (113,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (114,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building',NULL,'topCeiling_uValue','float',0.639,NULL,NULL),
	 (115,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (116,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (117,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (118,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (119,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (120,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (121,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (122,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (123,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (124,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (125,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (126,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (127,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (128,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (129,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (130,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (131,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (132,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (133,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (134,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (135,'TABULA','NL',1975,1991,'[1975,1991]','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (136,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'averageStoreyHeight','float',2.4,NULL,NULL),
	 (137,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (138,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'outWalls_constructionTypeId','int',201.0,NULL,NULL),
	 (139,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'outWalls_windowTypeId','int',1.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (140,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'outWalls_windowRatio','float',0.21,NULL,NULL),
	 (141,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'outWalls_uValue','float',0.36,NULL,NULL),
	 (142,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'groundShell_constructionTypeId','int',125.0,NULL,NULL),
	 (143,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (144,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (145,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'groundShell_uValue','float',0.355,NULL,NULL),
	 (146,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',163.0,NULL,NULL),
	 (147,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',1.0,NULL,NULL),
	 (148,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (149,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (150,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',170.0,NULL,NULL),
	 (151,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'topCeiling_windowTypeId','int',1.0,NULL,NULL),
	 (152,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building',NULL,'topCeiling_uValue','float',0.364,NULL,NULL),
	 (153,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',31.0,NULL,NULL),
	 (154,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.456,NULL,NULL),
	 (155,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',217.0,NULL,NULL),
	 (156,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (157,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (158,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.305,NULL,NULL),
	 (159,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (160,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (161,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (162,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (163,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (164,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',30.0,NULL,NULL),
	 (165,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.135,NULL,NULL),
	 (166,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',216.0,NULL,NULL),
	 (167,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (168,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (169,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.226,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (170,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (171,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (172,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (173,'TABULA','NL',1992,2005,'[1992,2005]','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (174,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (175,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'thermalBridgeUValue','float',0.04,NULL,NULL),
	 (176,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (177,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'outWalls_constructionTypeId','int',200.0,NULL,NULL),
	 (178,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (179,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'outWalls_windowRatio','float',0.18,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (180,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'outWalls_uValue','float',0.271,NULL,NULL),
	 (181,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (182,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (183,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (184,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL),
	 (185,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',162.0,NULL,NULL),
	 (186,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (187,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (188,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'pitchedRoof_uValue','float',0.232,NULL,NULL),
	 (189,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',169.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (190,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (191,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building',NULL,'topCeiling_uValue','float',0.232,NULL,NULL),
	 (192,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (193,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (194,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (195,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (196,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (197,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (198,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (199,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (200,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (201,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (202,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (203,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (204,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (205,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (206,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (207,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (208,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (209,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (210,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (211,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (212,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (213,'TABULA','NL',2006,2014,'[2006,2014]','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (214,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (215,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'thermalBridgeUValue','float',0.02,NULL,NULL),
	 (216,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (217,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'outWalls_constructionTypeId','int',199.0,NULL,NULL),
	 (218,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (219,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'outWalls_windowRatio','float',0.18,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (220,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'outWalls_uValue','float',0.21,NULL,NULL),
	 (221,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (222,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (223,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (224,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL),
	 (225,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',161.0,NULL,NULL),
	 (226,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (227,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (228,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'pitchedRoof_uValue','float',0.161,NULL,NULL),
	 (229,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'topCeiling_constructionTypeId','int',168.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (230,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (231,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building',NULL,'topCeiling_uValue','float',0.161,NULL,NULL),
	 (232,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (233,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',147.0,NULL,NULL),
	 (234,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.226,NULL,NULL),
	 (235,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',103.0,NULL,NULL),
	 (236,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (237,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (238,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.289,NULL,NULL),
	 (239,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (240,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (241,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',35.0,NULL,NULL),
	 (242,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.196,NULL,NULL),
	 (243,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (244,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',146.0,NULL,NULL),
	 (245,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.127,NULL,NULL),
	 (246,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',102.0,NULL,NULL),
	 (247,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (248,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (249,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.217,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (250,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (251,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (252,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',34.0,NULL,NULL),
	 (253,'TABULA','NL',2015,9999,'[2015,)','SFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.098,NULL,NULL),
	 (254,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'outWalls_windowRatio','float',0.35,NULL,NULL),
	 (255,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'outWalls_shortWaveReflectance','float',0.3,NULL,NULL),
	 (256,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (257,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (258,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.1,NULL,NULL),
	 (259,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'pitchedRoof_shortWaveReflectance','float',0.2,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (260,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'topCeiling_windowRatio','float',0.0,NULL,NULL),
	 (261,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'topCeiling_shortWaveReflectance','float',0.2,NULL,NULL),
	 (262,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'sharedWalls_constructionTypeId','int',12.0,NULL,NULL),
	 (263,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'sharedWalls_windowRatio','float',0.0,NULL,NULL),
	 (264,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'sharedWalls_uValue','float',2.933,NULL,NULL),
	 (265,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'interiorWalls_constructionTypeId','int',11.0,NULL,NULL),
	 (266,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'interiorWalls_windowRatio','float',0.0,NULL,NULL),
	 (267,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'interiorWalls_uValue','float',7.333,NULL,NULL),
	 (268,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'intermediaryFloors_constructionTypeId','int',10.0,NULL,NULL),
	 (269,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'intermediaryFloors_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (270,'TABULA','NL',NULL,NULL,NULL,'TH','residential building',NULL,'intermediaryFloors_uValue','float',2.2,NULL,NULL),
	 (271,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (272,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (273,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (274,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (275,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (276,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'outWalls_constructionTypeId','int',205.0,NULL,NULL),
	 (277,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'outWalls_windowTypeId','int',7.0,NULL,NULL),
	 (278,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'outWalls_windowRatio','float',0.3,NULL,NULL),
	 (279,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'outWalls_uValue','float',2.216,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (280,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'groundShell_constructionTypeId','int',134.0,NULL,NULL),
	 (281,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (282,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (283,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'groundShell_uValue','float',2.444,NULL,NULL),
	 (284,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',167.0,NULL,NULL),
	 (285,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',7.0,NULL,NULL),
	 (286,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (287,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'pitchedRoof_uValue','float',2.077,NULL,NULL),
	 (288,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'topCeiling_constructionTypeId','int',174.0,NULL,NULL),
	 (289,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'topCeiling_windowTypeId','int',7.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (290,'TABULA','NL',0,1964,'(,1964]','TH','residential building',NULL,'topCeiling_uValue','float',2.077,NULL,NULL),
	 (291,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (292,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (293,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (294,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',221.0,NULL,NULL),
	 (295,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (296,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (297,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.291,NULL,NULL),
	 (298,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (299,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (300,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (301,'TABULA','NL',0,1964,'(,1964]','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (302,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (303,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (304,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (305,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',220.0,NULL,NULL),
	 (306,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (307,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (308,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.219,NULL,NULL),
	 (309,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (310,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (311,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (312,'TABULA','NL',0,1964,'(,1964]','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (313,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (314,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (315,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (316,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (317,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (318,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'outWalls_constructionTypeId','int',203.0,NULL,NULL),
	 (319,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (320,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'outWalls_windowRatio','float',0.39,NULL,NULL),
	 (321,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'outWalls_uValue','float',1.45,NULL,NULL),
	 (322,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'groundShell_constructionTypeId','int',133.0,NULL,NULL),
	 (323,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (324,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (325,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'groundShell_uValue','float',2.327,NULL,NULL),
	 (326,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',165.0,NULL,NULL),
	 (327,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL),
	 (328,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (329,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'pitchedRoof_uValue','float',0.893,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (330,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'topCeiling_constructionTypeId','int',172.0,NULL,NULL),
	 (331,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (332,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building',NULL,'topCeiling_uValue','float',0.893,NULL,NULL),
	 (333,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (334,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (335,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (336,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (337,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (338,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (339,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (340,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (341,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (342,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',62.0,NULL,NULL),
	 (343,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.206,NULL,NULL),
	 (344,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (345,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (346,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (347,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (348,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (349,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (350,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (351,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (352,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (353,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',61.0,NULL,NULL),
	 (354,'TABULA','NL',1965,1974,'[1965,1974]','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.1,NULL,NULL),
	 (355,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (356,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (357,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (358,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (359,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (360,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'outWalls_constructionTypeId','int',202.0,NULL,NULL),
	 (361,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL),
	 (362,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'outWalls_windowRatio','float',0.32,NULL,NULL),
	 (363,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'outWalls_uValue','float',0.643,NULL,NULL),
	 (364,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'groundShell_constructionTypeId','int',129.0,NULL,NULL),
	 (365,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (366,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (367,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'groundShell_uValue','float',1.282,NULL,NULL),
	 (368,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',164.0,NULL,NULL),
	 (369,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (370,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (371,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'pitchedRoof_uValue','float',0.639,NULL,NULL),
	 (372,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'topCeiling_constructionTypeId','int',171.0,NULL,NULL),
	 (373,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (374,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building',NULL,'topCeiling_uValue','float',0.639,NULL,NULL),
	 (375,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (376,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (377,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',216.0,NULL,NULL),
	 (378,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (379,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (380,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.226,NULL,NULL),
	 (381,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (382,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (383,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (384,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (385,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (386,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (387,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (388,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',216.0,NULL,NULL),
	 (389,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (390,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (391,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.226,NULL,NULL),
	 (392,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (393,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (394,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (395,'TABULA','NL',1975,1991,'[1975,1991]','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (396,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (397,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (398,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (399,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (400,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (401,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'outWalls_constructionTypeId','int',201.0,NULL,NULL),
	 (402,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'outWalls_windowTypeId','int',1.0,NULL,NULL),
	 (403,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'outWalls_windowRatio','float',0.3,NULL,NULL),
	 (404,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'outWalls_uValue','float',0.36,NULL,NULL),
	 (405,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'groundShell_constructionTypeId','int',125.0,NULL,NULL),
	 (406,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (407,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (408,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'groundShell_uValue','float',0.355,NULL,NULL),
	 (409,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',163.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (410,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',1.0,NULL,NULL),
	 (411,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (412,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (413,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'topCeiling_constructionTypeId','int',170.0,NULL,NULL),
	 (414,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'topCeiling_windowTypeId','int',1.0,NULL,NULL),
	 (415,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building',NULL,'topCeiling_uValue','float',0.364,NULL,NULL),
	 (416,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (417,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (418,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (419,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (420,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (421,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (422,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (423,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (424,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',57.0,NULL,NULL),
	 (425,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.23,NULL,NULL),
	 (426,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (427,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (428,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (429,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (430,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (431,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (432,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (433,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (434,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (435,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',56.0,NULL,NULL),
	 (436,'TABULA','NL',1992,2005,'[1992,2005]','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.105,NULL,NULL),
	 (437,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (438,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (439,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'thermalBridgeUValue','float',0.04,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (440,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (441,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (442,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'outWalls_constructionTypeId','int',200.0,NULL,NULL),
	 (443,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (444,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'outWalls_windowRatio','float',0.39,NULL,NULL),
	 (445,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'outWalls_uValue','float',0.271,NULL,NULL),
	 (446,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (447,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (448,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (449,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (450,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',162.0,NULL,NULL),
	 (451,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (452,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (453,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'pitchedRoof_uValue','float',0.232,NULL,NULL),
	 (454,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'topCeiling_constructionTypeId','int',169.0,NULL,NULL),
	 (455,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (456,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building',NULL,'topCeiling_uValue','float',0.232,NULL,NULL),
	 (457,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (458,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',147.0,NULL,NULL),
	 (459,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.226,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (460,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (461,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (462,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (463,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (464,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (465,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (466,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',66.0,NULL,NULL),
	 (467,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.196,NULL,NULL),
	 (468,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (469,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',146.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (470,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.127,NULL,NULL),
	 (471,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (472,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (473,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (474,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (475,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (476,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (477,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',65.0,NULL,NULL),
	 (478,'TABULA','NL',2006,2014,'[2006,2014]','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.098,NULL,NULL),
	 (479,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (480,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (481,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'thermalBridgeUValue','float',0.02,NULL,NULL),
	 (482,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (483,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (484,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'outWalls_constructionTypeId','int',199.0,NULL,NULL),
	 (485,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (486,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'outWalls_windowRatio','float',0.39,NULL,NULL),
	 (487,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'outWalls_uValue','float',0.21,NULL,NULL),
	 (488,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (489,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (490,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (491,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL),
	 (492,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'pitchedRoof_constructionTypeId','int',161.0,NULL,NULL),
	 (493,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (494,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (495,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'pitchedRoof_uValue','float',0.161,NULL,NULL),
	 (496,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'topCeiling_constructionTypeId','int',168.0,NULL,NULL),
	 (497,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (498,'TABULA','NL',2015,9999,'[2015,)','TH','residential building',NULL,'topCeiling_uValue','float',0.161,NULL,NULL),
	 (499,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (500,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',147.0,NULL,NULL),
	 (501,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','outWalls_uValue','float',0.226,NULL,NULL),
	 (502,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (503,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (504,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (505,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (506,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (507,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (508,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',66.0,NULL,NULL),
	 (509,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.196,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (510,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (511,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',146.0,NULL,NULL),
	 (512,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.127,NULL,NULL),
	 (513,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (514,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (515,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (516,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (517,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (518,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (519,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',65.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (520,'TABULA','NL',2015,9999,'[2015,)','TH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.098,NULL,NULL),
	 (521,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'outWalls_windowRatio','float',0.25,NULL,NULL),
	 (522,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'outWalls_shortWaveReflectance','float',0.3,NULL,NULL),
	 (523,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (524,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (525,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.1,NULL,NULL),
	 (526,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'pitchedRoof_shortWaveReflectance','float',0.2,NULL,NULL),
	 (527,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'topCeiling_windowRatio','float',0.0,NULL,NULL),
	 (528,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'topCeiling_shortWaveReflectance','float',0.2,NULL,NULL),
	 (529,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'sharedWalls_constructionTypeId','int',12.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (530,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'sharedWalls_windowRatio','float',0.0,NULL,NULL),
	 (531,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'sharedWalls_uValue','float',2.933,NULL,NULL),
	 (532,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'interiorWalls_constructionTypeId','int',11.0,NULL,NULL),
	 (533,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'interiorWalls_windowRatio','float',0.0,NULL,NULL),
	 (534,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'interiorWalls_uValue','float',7.333,NULL,NULL),
	 (535,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'intermediaryFloors_constructionTypeId','int',10.0,NULL,NULL),
	 (536,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'intermediaryFloors_windowRatio','float',0.0,NULL,NULL),
	 (537,'TABULA','NL',NULL,NULL,NULL,'MFH','residential building',NULL,'intermediaryFloors_uValue','float',2.2,NULL,NULL),
	 (538,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (539,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (540,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (541,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (542,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (543,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'outWalls_constructionTypeId','int',204.0,NULL,NULL),
	 (544,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL),
	 (545,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'outWalls_windowRatio','float',0.26,NULL,NULL),
	 (546,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'outWalls_uValue','float',1.606,NULL,NULL),
	 (547,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'groundShell_constructionTypeId','int',132.0,NULL,NULL),
	 (548,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (549,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (550,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'groundShell_uValue','float',1.723,NULL,NULL),
	 (551,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',166.0,NULL,NULL),
	 (552,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL),
	 (553,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (554,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'pitchedRoof_uValue','float',1.539,NULL,NULL),
	 (555,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',173.0,NULL,NULL),
	 (556,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (557,'TABULA','NL',0,1964,'(,1964]','MFH','residential building',NULL,'topCeiling_uValue','float',1.539,NULL,NULL),
	 (558,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (559,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',155.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (560,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.33,NULL,NULL),
	 (561,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',221.0,NULL,NULL),
	 (562,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (563,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (564,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.291,NULL,NULL),
	 (565,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (566,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (567,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',213.0,NULL,NULL),
	 (568,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.234,NULL,NULL),
	 (569,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (570,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',154.0,NULL,NULL),
	 (571,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.135,NULL,NULL),
	 (572,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',220.0,NULL,NULL),
	 (573,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (574,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (575,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.219,NULL,NULL),
	 (576,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (577,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (578,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',212.0,NULL,NULL),
	 (579,'TABULA','NL',0,1964,'(,1964]','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.106,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (580,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (581,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (582,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (583,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (584,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (585,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'outWalls_constructionTypeId','int',203.0,NULL,NULL),
	 (586,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'outWalls_windowTypeId','int',5.0,NULL,NULL),
	 (587,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'outWalls_windowRatio','float',0.36,NULL,NULL),
	 (588,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'outWalls_uValue','float',1.45,NULL,NULL),
	 (589,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'groundShell_constructionTypeId','int',133.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (590,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (591,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (592,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'groundShell_uValue','float',2.327,NULL,NULL),
	 (593,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',165.0,NULL,NULL),
	 (594,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',5.0,NULL,NULL),
	 (595,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (596,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'pitchedRoof_uValue','float',0.893,NULL,NULL),
	 (597,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',172.0,NULL,NULL),
	 (598,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'topCeiling_windowTypeId','int',5.0,NULL,NULL),
	 (599,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building',NULL,'topCeiling_uValue','float',0.893,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (600,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (601,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (602,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (603,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (604,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (605,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (606,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (607,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (608,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (609,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (610,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (611,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (612,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (613,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (614,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (615,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (616,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (617,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (618,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (619,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (620,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (621,'TABULA','NL',1965,1974,'[1965,1974]','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (622,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (623,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (624,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (625,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (626,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (627,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'outWalls_constructionTypeId','int',202.0,NULL,NULL),
	 (628,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'outWalls_windowTypeId','int',3.0,NULL,NULL),
	 (629,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'outWalls_windowRatio','float',0.26,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (630,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'outWalls_uValue','float',0.643,NULL,NULL),
	 (631,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'groundShell_constructionTypeId','int',129.0,NULL,NULL),
	 (632,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (633,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (634,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'groundShell_uValue','float',1.282,NULL,NULL),
	 (635,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',164.0,NULL,NULL),
	 (636,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',3.0,NULL,NULL),
	 (637,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (638,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'pitchedRoof_uValue','float',0.639,NULL,NULL),
	 (639,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',171.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (640,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'topCeiling_windowTypeId','int',3.0,NULL,NULL),
	 (641,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building',NULL,'topCeiling_uValue','float',0.639,NULL,NULL),
	 (642,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (643,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (644,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (645,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (646,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (647,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (648,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (649,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (650,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (651,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (652,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (653,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (654,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (655,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (656,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (657,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (658,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (659,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (660,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (661,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (662,'TABULA','NL',1975,1991,'[1975,1991]','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (663,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (664,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (665,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (666,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (667,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (668,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'outWalls_constructionTypeId','int',201.0,NULL,NULL),
	 (669,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (670,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'outWalls_windowRatio','float',0.28,NULL,NULL),
	 (671,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'outWalls_uValue','float',0.36,NULL,NULL),
	 (672,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'groundShell_constructionTypeId','int',125.0,NULL,NULL),
	 (673,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (674,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (675,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'groundShell_uValue','float',0.355,NULL,NULL),
	 (676,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',163.0,NULL,NULL),
	 (677,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (678,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (679,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (680,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',170.0,NULL,NULL),
	 (681,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (682,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building',NULL,'topCeiling_uValue','float',0.364,NULL,NULL),
	 (683,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (684,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (685,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',95.0,NULL,NULL),
	 (686,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (687,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (688,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.346,NULL,NULL),
	 (689,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (690,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (691,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (692,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (693,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (694,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (695,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (696,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',94.0,NULL,NULL),
	 (697,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (698,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (699,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.248,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (700,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (701,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (702,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (703,'TABULA','NL',1992,2005,'[1992,2005]','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (704,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (705,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (706,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'thermalBridgeUValue','float',0.04,NULL,NULL),
	 (707,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (708,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (709,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'outWalls_constructionTypeId','int',200.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (710,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (711,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'outWalls_windowRatio','float',0.51,NULL,NULL),
	 (712,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'outWalls_uValue','float',0.271,NULL,NULL),
	 (713,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (714,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (715,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (716,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL),
	 (717,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',162.0,NULL,NULL),
	 (718,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (719,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (720,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'pitchedRoof_uValue','float',0.232,NULL,NULL),
	 (721,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',169.0,NULL,NULL),
	 (722,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (723,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building',NULL,'topCeiling_uValue','float',0.232,NULL,NULL),
	 (724,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (725,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (726,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (727,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (728,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (729,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (730,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (731,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (732,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (733,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',35.0,NULL,NULL),
	 (734,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.196,NULL,NULL),
	 (735,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (736,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (737,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (738,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (739,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (740,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (741,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (742,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (743,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (744,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',34.0,NULL,NULL),
	 (745,'TABULA','NL',2006,2014,'[2006,2014]','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.098,NULL,NULL),
	 (746,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (747,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (748,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'thermalBridgeUValue','float',0.02,NULL,NULL),
	 (749,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (750,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (751,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'outWalls_constructionTypeId','int',199.0,NULL,NULL),
	 (752,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (753,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'outWalls_windowRatio','float',0.51,NULL,NULL),
	 (754,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'outWalls_uValue','float',0.21,NULL,NULL),
	 (755,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'groundShell_constructionTypeId','int',123.0,NULL,NULL),
	 (756,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (757,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (758,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'groundShell_uValue','float',0.267,NULL,NULL),
	 (759,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'pitchedRoof_constructionTypeId','int',161.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (760,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (761,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (762,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'pitchedRoof_uValue','float',0.161,NULL,NULL),
	 (763,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'topCeiling_constructionTypeId','int',168.0,NULL,NULL),
	 (764,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (765,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building',NULL,'topCeiling_uValue','float',0.161,NULL,NULL),
	 (766,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (767,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',147.0,NULL,NULL),
	 (768,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','outWalls_uValue','float',0.226,NULL,NULL),
	 (769,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (770,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (771,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (772,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (773,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (774,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (775,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',35.0,NULL,NULL),
	 (776,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','MediumRefurbishment','topCeiling_uValue','float',0.196,NULL,NULL),
	 (777,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (778,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',146.0,NULL,NULL),
	 (779,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.127,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (780,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (781,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (782,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (783,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (784,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (785,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (786,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',34.0,NULL,NULL),
	 (787,'TABULA','NL',2015,9999,'[2015,)','MFH','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.098,NULL,NULL),
	 (788,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'outWalls_windowRatio','float',0.25,NULL,NULL),
	 (789,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'outWalls_shortWaveReflectance','float',0.3,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (790,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (791,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (792,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.1,NULL,NULL),
	 (793,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'pitchedRoof_shortWaveReflectance','float',0.2,NULL,NULL),
	 (794,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'topCeiling_windowRatio','float',0.0,NULL,NULL),
	 (795,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'topCeiling_shortWaveReflectance','float',0.2,NULL,NULL),
	 (796,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'sharedWalls_constructionTypeId','int',12.0,NULL,NULL),
	 (797,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'sharedWalls_windowRatio','float',0.0,NULL,NULL),
	 (798,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'sharedWalls_uValue','float',2.933,NULL,NULL),
	 (799,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'interiorWalls_constructionTypeId','int',11.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (800,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'interiorWalls_windowRatio','float',0.0,NULL,NULL),
	 (801,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'interiorWalls_uValue','float',7.333,NULL,NULL),
	 (802,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'intermediaryFloors_constructionTypeId','int',10.0,NULL,NULL),
	 (803,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'intermediaryFloors_windowRatio','float',0.0,NULL,NULL),
	 (804,'TABULA','NL',NULL,NULL,NULL,'AB','residential building',NULL,'intermediaryFloors_uValue','float',2.2,NULL,NULL),
	 (805,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (806,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (807,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (808,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (809,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (810,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'outWalls_constructionTypeId','int',204.0,NULL,NULL),
	 (811,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL),
	 (812,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'outWalls_windowRatio','float',0.3,NULL,NULL),
	 (813,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'outWalls_uValue','float',1.606,NULL,NULL),
	 (814,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'groundShell_constructionTypeId','int',128.0,NULL,NULL),
	 (815,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (816,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (817,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'groundShell_uValue','float',1.142,NULL,NULL),
	 (818,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',166.0,NULL,NULL),
	 (819,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (820,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (821,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'pitchedRoof_uValue','float',1.539,NULL,NULL),
	 (822,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'topCeiling_constructionTypeId','int',173.0,NULL,NULL),
	 (823,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (824,'TABULA','NL',0,1964,'(,1964]','AB','residential building',NULL,'topCeiling_uValue','float',1.539,NULL,NULL),
	 (825,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (826,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (827,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (828,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (829,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (830,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (831,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (832,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (833,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (834,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (835,'TABULA','NL',0,1964,'(,1964]','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (836,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (837,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (838,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (839,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (840,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (841,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (842,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (843,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (844,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (845,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (846,'TABULA','NL',0,1964,'(,1964]','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (847,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (848,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (849,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (850,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (851,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (852,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'outWalls_constructionTypeId','int',203.0,NULL,NULL),
	 (853,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'outWalls_windowTypeId','int',6.0,NULL,NULL),
	 (854,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'outWalls_windowRatio','float',0.45,NULL,NULL),
	 (855,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'outWalls_uValue','float',1.45,NULL,NULL),
	 (856,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'groundShell_constructionTypeId','int',130.0,NULL,NULL),
	 (857,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (858,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (859,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'groundShell_uValue','float',1.371,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (860,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',165.0,NULL,NULL),
	 (861,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',6.0,NULL,NULL),
	 (862,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (863,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'pitchedRoof_uValue','float',0.893,NULL,NULL),
	 (864,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'topCeiling_constructionTypeId','int',172.0,NULL,NULL),
	 (865,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'topCeiling_windowTypeId','int',6.0,NULL,NULL),
	 (866,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building',NULL,'topCeiling_uValue','float',0.893,NULL,NULL),
	 (867,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (868,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',31.0,NULL,NULL),
	 (869,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.456,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (870,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (871,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (872,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (873,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (874,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (875,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (876,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (877,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (878,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (879,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',30.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (880,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.135,NULL,NULL),
	 (881,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (882,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (883,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (884,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (885,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (886,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (887,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (888,'TABULA','NL',1965,1974,'[1965,1974]','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (889,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (890,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (891,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (892,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (893,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (894,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'outWalls_constructionTypeId','int',202.0,NULL,NULL),
	 (895,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'outWalls_windowTypeId','int',2.0,NULL,NULL),
	 (896,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'outWalls_windowRatio','float',0.23,NULL,NULL),
	 (897,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'outWalls_uValue','float',0.643,NULL,NULL),
	 (898,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'groundShell_constructionTypeId','int',126.0,NULL,NULL),
	 (899,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (900,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (901,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'groundShell_uValue','float',0.537,NULL,NULL),
	 (902,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',164.0,NULL,NULL),
	 (903,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',2.0,NULL,NULL),
	 (904,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (905,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'pitchedRoof_uValue','float',0.639,NULL,NULL),
	 (906,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'topCeiling_constructionTypeId','int',171.0,NULL,NULL),
	 (907,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'topCeiling_windowTypeId','int',2.0,NULL,NULL),
	 (908,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building',NULL,'topCeiling_uValue','float',0.639,NULL,NULL),
	 (909,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (910,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (911,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',217.0,NULL,NULL),
	 (912,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (913,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (914,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.305,NULL,NULL),
	 (915,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (916,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (917,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',23.0,NULL,NULL),
	 (918,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.249,NULL,NULL),
	 (919,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (920,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (921,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (922,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',216.0,NULL,NULL),
	 (923,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (924,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (925,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.226,NULL,NULL),
	 (926,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (927,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (928,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',22.0,NULL,NULL),
	 (929,'TABULA','NL',1975,1991,'[1975,1991]','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.109,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (930,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (931,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (932,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (933,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (934,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (935,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'outWalls_constructionTypeId','int',201.0,NULL,NULL),
	 (936,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'outWalls_windowTypeId','int',1.0,NULL,NULL),
	 (937,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'outWalls_windowRatio','float',0.34,NULL,NULL),
	 (938,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'outWalls_uValue','float',0.36,NULL,NULL),
	 (939,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'groundShell_constructionTypeId','int',124.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (940,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (941,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (942,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'groundShell_uValue','float',0.324,NULL,NULL),
	 (943,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',163.0,NULL,NULL),
	 (944,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',1.0,NULL,NULL),
	 (945,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (946,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (947,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'topCeiling_constructionTypeId','int',170.0,NULL,NULL),
	 (948,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'topCeiling_windowTypeId','int',1.0,NULL,NULL),
	 (949,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building',NULL,'topCeiling_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (950,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (951,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (952,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (953,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (954,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (955,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (956,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (957,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (958,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',19.0,NULL,NULL),
	 (959,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.214,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (960,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (961,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (962,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (963,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (964,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (965,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (966,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (967,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (968,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (969,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',18.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (970,'TABULA','NL',1992,2005,'[1992,2005]','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.102,NULL,NULL),
	 (971,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (972,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (973,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'thermalBridgeUValue','float',0.04,NULL,NULL),
	 (974,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (975,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (976,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'outWalls_constructionTypeId','int',200.0,NULL,NULL),
	 (977,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (978,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'outWalls_windowRatio','float',0.2,NULL,NULL),
	 (979,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'outWalls_uValue','float',0.271,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (980,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'groundShell_constructionTypeId','int',122.0,NULL,NULL),
	 (981,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (982,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (983,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'groundShell_uValue','float',0.247,NULL,NULL),
	 (984,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',162.0,NULL,NULL),
	 (985,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (986,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (987,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'pitchedRoof_uValue','float',0.232,NULL,NULL),
	 (988,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'topCeiling_constructionTypeId','int',169.0,NULL,NULL),
	 (989,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (990,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building',NULL,'topCeiling_uValue','float',0.232,NULL,NULL),
	 (991,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (992,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',78.0,NULL,NULL),
	 (993,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.227,NULL,NULL),
	 (994,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (995,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (996,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (997,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (998,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (999,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1000,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',57.0,NULL,NULL),
	 (1001,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.23,NULL,NULL),
	 (1002,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1003,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',77.0,NULL,NULL),
	 (1004,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.128,NULL,NULL),
	 (1005,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (1006,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1007,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1008,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (1009,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1010,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1011,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',56.0,NULL,NULL),
	 (1012,'TABULA','NL',2006,2014,'[2006,2014]','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.105,NULL,NULL),
	 (1013,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1014,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1015,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'thermalBridgeUValue','float',0.02,NULL,NULL),
	 (1016,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1017,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (1018,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'outWalls_constructionTypeId','int',199.0,NULL,NULL),
	 (1019,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1020,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'outWalls_windowRatio','float',0.38,NULL,NULL),
	 (1021,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'outWalls_uValue','float',0.21,NULL,NULL),
	 (1022,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'groundShell_constructionTypeId','int',122.0,NULL,NULL),
	 (1023,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1024,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1025,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'groundShell_uValue','float',0.247,NULL,NULL),
	 (1026,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'pitchedRoof_constructionTypeId','int',161.0,NULL,NULL),
	 (1027,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (1028,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1029,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'pitchedRoof_uValue','float',0.161,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1030,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'topCeiling_constructionTypeId','int',168.0,NULL,NULL),
	 (1031,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (1032,'TABULA','NL',2015,9999,'[2015,)','AB','residential building',NULL,'topCeiling_uValue','float',0.161,NULL,NULL),
	 (1033,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (1034,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','outWalls_constructionTypeId','int',82.0,NULL,NULL),
	 (1035,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','outWalls_uValue','float',0.218,NULL,NULL),
	 (1036,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','groundShell_constructionTypeId','int',107.0,NULL,NULL),
	 (1037,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1038,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1039,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','groundShell_uValue','float',0.257,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1040,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1041,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1042,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','topCeiling_constructionTypeId','int',70.0,NULL,NULL),
	 (1043,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','MediumRefurbishment','topCeiling_uValue','float',0.171,NULL,NULL),
	 (1044,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1045,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','outWalls_constructionTypeId','int',81.0,NULL,NULL),
	 (1046,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','outWalls_uValue','float',0.125,NULL,NULL),
	 (1047,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','groundShell_constructionTypeId','int',106.0,NULL,NULL),
	 (1048,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1049,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1050,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','groundShell_uValue','float',0.199,NULL,NULL),
	 (1051,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1052,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1053,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',69.0,NULL,NULL),
	 (1054,'TABULA','NL',2015,9999,'[2015,)','AB','residential building','AdvancedRefurbishment','topCeiling_uValue','float',0.091,NULL,NULL),
	 (1055,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'outWalls_windowRatio','float',0.25,NULL,NULL),
	 (1056,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'outWalls_shortWaveReflectance','float',0.3,NULL,NULL),
	 (1057,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1058,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1059,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.1,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1060,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'pitchedRoof_shortWaveReflectance','float',0.2,NULL,NULL),
	 (1061,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'topCeiling_windowRatio','float',0.0,NULL,NULL),
	 (1062,'TABULA','NL',NULL,NULL,NULL,'COM','commercial building',NULL,'topCeiling_shortWaveReflectance','float',0.2,NULL,NULL),
	 (1063,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1064,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1065,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (1066,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1067,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (1068,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'outWalls_constructionTypeId','int',204.0,NULL,NULL),
	 (1069,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'outWalls_windowTypeId','int',4.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1070,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'outWalls_windowRatio','float',0.3,NULL,NULL),
	 (1071,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'outWalls_uValue','float',1.606,NULL,NULL),
	 (1072,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'groundShell_constructionTypeId','int',128.0,NULL,NULL),
	 (1073,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1074,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1075,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'groundShell_uValue','float',1.142,NULL,NULL),
	 (1076,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',166.0,NULL,NULL),
	 (1077,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',4.0,NULL,NULL),
	 (1078,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1079,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'pitchedRoof_uValue','float',1.539,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1080,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',173.0,NULL,NULL),
	 (1081,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'topCeiling_windowTypeId','int',4.0,NULL,NULL),
	 (1082,'TABULA','NL',0,1964,'(,1964]','COM','commercial building',NULL,'topCeiling_uValue','float',1.539,NULL,NULL),
	 (1083,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (1084,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',121.0,NULL,NULL),
	 (1085,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.247,NULL,NULL),
	 (1086,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (1087,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1088,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1089,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1090,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1091,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1092,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (1093,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (1094,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1095,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',120.0,NULL,NULL),
	 (1096,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.134,NULL,NULL),
	 (1097,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL),
	 (1098,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1099,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1100,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (1101,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1102,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1103,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (1104,'TABULA','NL',0,1964,'(,1964]','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (1105,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1106,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1107,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'thermalBridgeUValue','float',0.1,NULL,NULL),
	 (1108,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1109,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'infiltrationRate','float',0.3,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1110,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'outWalls_constructionTypeId','int',203.0,NULL,NULL),
	 (1111,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'outWalls_windowTypeId','int',6.0,NULL,NULL),
	 (1112,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'outWalls_windowRatio','float',0.45,NULL,NULL),
	 (1113,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'outWalls_uValue','float',1.45,NULL,NULL),
	 (1114,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'groundShell_constructionTypeId','int',130.0,NULL,NULL),
	 (1115,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1116,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1117,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'groundShell_uValue','float',1.371,NULL,NULL),
	 (1118,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',165.0,NULL,NULL),
	 (1119,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',6.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1120,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1121,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'pitchedRoof_uValue','float',0.893,NULL,NULL),
	 (1122,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',172.0,NULL,NULL),
	 (1123,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'topCeiling_windowTypeId','int',6.0,NULL,NULL),
	 (1124,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building',NULL,'topCeiling_uValue','float',0.893,NULL,NULL),
	 (1125,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (1126,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',31.0,NULL,NULL),
	 (1127,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.456,NULL,NULL),
	 (1128,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',225.0,NULL,NULL),
	 (1129,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1130,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1131,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.314,NULL,NULL),
	 (1132,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1133,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1134,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',210.0,NULL,NULL),
	 (1135,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.211,NULL,NULL),
	 (1136,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1137,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',30.0,NULL,NULL),
	 (1138,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.135,NULL,NULL),
	 (1139,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',224.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1140,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1141,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1142,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.231,NULL,NULL),
	 (1143,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1144,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1145,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',209.0,NULL,NULL),
	 (1146,'TABULA','NL',1965,1974,'[1965,1974]','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.101,NULL,NULL),
	 (1147,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1148,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1149,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1150,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1151,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (1152,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'outWalls_constructionTypeId','int',202.0,NULL,NULL),
	 (1153,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'outWalls_windowTypeId','int',2.0,NULL,NULL),
	 (1154,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'outWalls_windowRatio','float',0.23,NULL,NULL),
	 (1155,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'outWalls_uValue','float',0.643,NULL,NULL),
	 (1156,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'groundShell_constructionTypeId','int',126.0,NULL,NULL),
	 (1157,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1158,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1159,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'groundShell_uValue','float',0.537,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1160,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',164.0,NULL,NULL),
	 (1161,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',2.0,NULL,NULL),
	 (1162,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1163,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'pitchedRoof_uValue','float',0.639,NULL,NULL),
	 (1164,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',171.0,NULL,NULL),
	 (1165,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'topCeiling_windowTypeId','int',2.0,NULL,NULL),
	 (1166,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building',NULL,'topCeiling_uValue','float',0.639,NULL,NULL),
	 (1167,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (1168,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL),
	 (1169,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',217.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1170,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1171,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1172,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.305,NULL,NULL),
	 (1173,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1174,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1175,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',23.0,NULL,NULL),
	 (1176,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.249,NULL,NULL),
	 (1177,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1178,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL),
	 (1179,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1180,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',216.0,NULL,NULL),
	 (1181,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1182,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1183,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.226,NULL,NULL),
	 (1184,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1185,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1186,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',22.0,NULL,NULL),
	 (1187,'TABULA','NL',1975,1991,'[1975,1991]','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.109,NULL,NULL),
	 (1188,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1189,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1190,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'thermalBridgeUValue','float',0.05,NULL,NULL),
	 (1191,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1192,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'infiltrationRate','float',0.3,NULL,NULL),
	 (1193,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'outWalls_constructionTypeId','int',201.0,NULL,NULL),
	 (1194,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'outWalls_windowTypeId','int',1.0,NULL,NULL),
	 (1195,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'outWalls_windowRatio','float',0.34,NULL,NULL),
	 (1196,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'outWalls_uValue','float',0.36,NULL,NULL),
	 (1197,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'groundShell_constructionTypeId','int',124.0,NULL,NULL),
	 (1198,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1199,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1200,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'groundShell_uValue','float',0.324,NULL,NULL),
	 (1201,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',163.0,NULL,NULL),
	 (1202,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',1.0,NULL,NULL),
	 (1203,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1204,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1205,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',170.0,NULL,NULL),
	 (1206,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'topCeiling_windowTypeId','int',1.0,NULL,NULL),
	 (1207,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building',NULL,'topCeiling_uValue','float',0.364,NULL,NULL),
	 (1208,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',27.0,NULL,NULL),
	 (1209,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.235,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1210,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (1211,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1212,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1213,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (1214,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1215,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1216,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',19.0,NULL,NULL),
	 (1217,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.214,NULL,NULL),
	 (1218,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1219,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',26.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1220,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.13,NULL,NULL),
	 (1221,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (1222,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1223,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1224,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (1225,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1226,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1227,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',18.0,NULL,NULL),
	 (1228,'TABULA','NL',1992,2005,'[1992,2005]','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.102,NULL,NULL),
	 (1229,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1230,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1231,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'thermalBridgeUValue','float',0.04,NULL,NULL),
	 (1232,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1233,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (1234,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'outWalls_constructionTypeId','int',200.0,NULL,NULL),
	 (1235,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (1236,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'outWalls_windowRatio','float',0.2,NULL,NULL),
	 (1237,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'outWalls_uValue','float',0.271,NULL,NULL),
	 (1238,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'groundShell_constructionTypeId','int',122.0,NULL,NULL),
	 (1239,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1240,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1241,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'groundShell_uValue','float',0.247,NULL,NULL),
	 (1242,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',162.0,NULL,NULL),
	 (1243,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (1244,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1245,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'pitchedRoof_uValue','float',0.232,NULL,NULL),
	 (1246,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',169.0,NULL,NULL),
	 (1247,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL),
	 (1248,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building',NULL,'topCeiling_uValue','float',0.232,NULL,NULL),
	 (1249,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1250,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',78.0,NULL,NULL),
	 (1251,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.227,NULL,NULL),
	 (1252,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',99.0,NULL,NULL),
	 (1253,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1254,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1255,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.301,NULL,NULL),
	 (1256,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1257,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL),
	 (1258,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',57.0,NULL,NULL),
	 (1259,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.23,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1260,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1261,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',77.0,NULL,NULL),
	 (1262,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.128,NULL,NULL),
	 (1263,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',98.0,NULL,NULL),
	 (1264,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1265,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1266,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.224,NULL,NULL),
	 (1267,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL),
	 (1268,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1269,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',56.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1270,'TABULA','NL',2006,2014,'[2006,2014]','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.105,NULL,NULL),
	 (1271,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'averageStoreyHeight','float',3.0,NULL,NULL),
	 (1272,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'buildingEffectiveThermalCapacity','float',90.0,NULL,NULL),
	 (1273,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'thermalBridgeUValue','float',0.02,NULL,NULL),
	 (1274,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'indirectlyHeatedAreaRatio','float',0.15,NULL,NULL),
	 (1275,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'infiltrationRate','float',0.2,NULL,NULL),
	 (1276,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'outWalls_constructionTypeId','int',199.0,NULL,NULL),
	 (1277,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'outWalls_windowTypeId','int',0.0,NULL,NULL),
	 (1278,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'outWalls_windowRatio','float',0.38,NULL,NULL),
	 (1279,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'outWalls_uValue','float',0.21,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1280,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'groundShell_constructionTypeId','int',122.0,NULL,NULL),
	 (1281,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1282,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1283,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'groundShell_uValue','float',0.247,NULL,NULL),
	 (1284,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'pitchedRoof_constructionTypeId','int',161.0,NULL,NULL),
	 (1285,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'pitchedRoof_windowTypeId','float',0.0,NULL,NULL),
	 (1286,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'pitchedRoof_windowRatio','float',0.0,NULL,NULL),
	 (1287,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'pitchedRoof_uValue','float',0.161,NULL,NULL),
	 (1288,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'topCeiling_constructionTypeId','int',168.0,NULL,NULL),
	 (1289,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'topCeiling_windowTypeId','int',0.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1290,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building',NULL,'topCeiling_uValue','float',0.161,NULL,NULL),
	 (1291,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','thermalBridgeUValue','float',0.05,NULL,NULL),
	 (1292,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','outWalls_constructionTypeId','int',82.0,NULL,NULL),
	 (1293,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','outWalls_uValue','float',0.218,NULL,NULL),
	 (1294,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','groundShell_constructionTypeId','int',107.0,NULL,NULL),
	 (1295,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1296,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1297,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','groundShell_uValue','float',0.257,NULL,NULL),
	 (1298,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','pitchedRoof_constructionTypeId','int',198.0,NULL,NULL),
	 (1299,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','pitchedRoof_uValue','float',0.364,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1300,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','topCeiling_constructionTypeId','int',70.0,NULL,NULL),
	 (1301,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','MediumRefurbishment','topCeiling_uValue','float',0.171,NULL,NULL),
	 (1302,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','thermalBridgeUValue','float',0.03,NULL,NULL),
	 (1303,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','outWalls_constructionTypeId','int',81.0,NULL,NULL),
	 (1304,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','outWalls_uValue','float',0.125,NULL,NULL),
	 (1305,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','groundShell_constructionTypeId','int',106.0,NULL,NULL),
	 (1306,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','groundShell_windowRatio','float',0.0,NULL,NULL),
	 (1307,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','groundShell_shortWaveReflectance','float',0.0,NULL,NULL),
	 (1308,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','groundShell_uValue','float',0.199,NULL,NULL),
	 (1309,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','pitchedRoof_constructionTypeId','int',197.0,NULL,NULL);
INSERT INTO physics.building_type (id,"system",country,year_initial,year_end,construction_period,building_type,"function","element","attribute",data_type,value,uom,description) VALUES
	 (1310,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','pitchedRoof_uValue','float',0.138,NULL,NULL),
	 (1311,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','topCeiling_constructionTypeId','int',69.0,NULL,NULL),
	 (1312,'TABULA','NL',2015,9999,'[2015,)','COM','commercial building','AdvancedRefurbishment','topCeiling_uValue','float',0.091,NULL,NULL);

INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (0,'TABULA','NL',0,'outWall','Aerated concrete-25cm',62,'thickness','float',0.01,NULL,NULL),
	 (1,'TABULA','NL',0,'outWall','Aerated concrete-25cm',9,'thickness','float',0.25,NULL,NULL),
	 (2,'TABULA','NL',0,'outWall','Aerated concrete-25cm',41,'thickness','float',0.01,NULL,NULL),
	 (3,'TABULA','NL',1,'outWall','Aerated concrete-25cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (4,'TABULA','NL',1,'outWall','Aerated concrete-25cm_EnEV2016',30,'thickness','float',0.08,NULL,NULL),
	 (5,'TABULA','NL',1,'outWall','Aerated concrete-25cm_EnEV2016',9,'thickness','float',0.25,NULL,NULL),
	 (6,'TABULA','NL',1,'outWall','Aerated concrete-25cm_EnEV2016',41,'thickness','float',0.01,NULL,NULL),
	 (7,'TABULA','NL',2,'outWall','Aerated concrete-25cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (8,'TABULA','NL',2,'outWall','Aerated concrete-25cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (9,'TABULA','NL',2,'outWall','Aerated concrete-25cm_RefAdv',62,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (10,'TABULA','NL',2,'outWall','Aerated concrete-25cm_RefAdv',9,'thickness','float',0.25,NULL,NULL),
	 (11,'TABULA','NL',2,'outWall','Aerated concrete-25cm_RefAdv',41,'thickness','float',0.01,NULL,NULL),
	 (12,'TABULA','NL',3,'outWall','Aerated concrete-25cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (13,'TABULA','NL',3,'outWall','Aerated concrete-25cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (14,'TABULA','NL',3,'outWall','Aerated concrete-25cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (15,'TABULA','NL',3,'outWall','Aerated concrete-25cm_RefMed',9,'thickness','float',0.25,NULL,NULL),
	 (16,'TABULA','NL',3,'outWall','Aerated concrete-25cm_RefMed',41,'thickness','float',0.01,NULL,NULL),
	 (17,'TABULA','NL',4,'outWall','Aerated concrete-30cm',62,'thickness','float',0.01,NULL,NULL),
	 (18,'TABULA','NL',4,'outWall','Aerated concrete-30cm',9,'thickness','float',0.3,NULL,NULL),
	 (19,'TABULA','NL',4,'outWall','Aerated concrete-30cm',43,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (20,'TABULA','NL',5,'outWall','Aerated concrete-30cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (21,'TABULA','NL',5,'outWall','Aerated concrete-30cm_EnEV2016',30,'thickness','float',0.075,NULL,NULL),
	 (22,'TABULA','NL',5,'outWall','Aerated concrete-30cm_EnEV2016',9,'thickness','float',0.3,NULL,NULL),
	 (23,'TABULA','NL',5,'outWall','Aerated concrete-30cm_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (24,'TABULA','NL',6,'outWall','Aerated concrete-30cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (25,'TABULA','NL',6,'outWall','Aerated concrete-30cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (26,'TABULA','NL',6,'outWall','Aerated concrete-30cm_RefAdv',61,'thickness','float',0.01,NULL,NULL),
	 (27,'TABULA','NL',6,'outWall','Aerated concrete-30cm_RefAdv',9,'thickness','float',0.3,NULL,NULL),
	 (28,'TABULA','NL',6,'outWall','Aerated concrete-30cm_RefAdv',43,'thickness','float',0.01,NULL,NULL),
	 (29,'TABULA','NL',7,'outWall','Aerated concrete-30cm_RefMed',62,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (30,'TABULA','NL',7,'outWall','Aerated concrete-30cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (31,'TABULA','NL',7,'outWall','Aerated concrete-30cm_RefMed',61,'thickness','float',0.01,NULL,NULL),
	 (32,'TABULA','NL',7,'outWall','Aerated concrete-30cm_RefMed',9,'thickness','float',0.3,NULL,NULL),
	 (33,'TABULA','NL',7,'outWall','Aerated concrete-30cm_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (34,'TABULA','NL',8,'outWall','Aerated concrete-50cm',62,'thickness','float',0.01,NULL,NULL),
	 (35,'TABULA','NL',8,'outWall','Aerated concrete-50cm',9,'thickness','float',0.5,NULL,NULL),
	 (36,'TABULA','NL',8,'outWall','Aerated concrete-50cm',43,'thickness','float',0.01,NULL,NULL),
	 (37,'TABULA','NL',9,'outWall','Aerated concrete-50cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (38,'TABULA','NL',9,'outWall','Aerated concrete-50cm_EnEV2016',30,'thickness','float',0.03,NULL,NULL),
	 (39,'TABULA','NL',9,'outWall','Aerated concrete-50cm_EnEV2016',9,'thickness','float',0.5,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (40,'TABULA','NL',9,'outWall','Aerated concrete-50cm_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (41,'TABULA','NL',24,'outWall','Breeze block-28cm',63,'thickness','float',0.01,NULL,NULL),
	 (42,'TABULA','NL',24,'outWall','Breeze block-28cm',6,'thickness','float',0.27,NULL,NULL),
	 (43,'TABULA','NL',24,'outWall','Breeze block-28cm',43,'thickness','float',0.01,NULL,NULL),
	 (44,'TABULA','NL',25,'outWall','Breeze block-28cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (45,'TABULA','NL',25,'outWall','Breeze block-28cm_EnEV2016',30,'thickness','float',0.12,NULL,NULL),
	 (46,'TABULA','NL',25,'outWall','Breeze block-28cm_EnEV2016',63,'thickness','float',0.01,NULL,NULL),
	 (47,'TABULA','NL',25,'outWall','Breeze block-28cm_EnEV2016',6,'thickness','float',0.27,NULL,NULL),
	 (48,'TABULA','NL',25,'outWall','Breeze block-28cm_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (49,'TABULA','NL',26,'outWall','Breeze block-28cm_RefAdv',62,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (50,'TABULA','NL',26,'outWall','Breeze block-28cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (51,'TABULA','NL',26,'outWall','Breeze block-28cm_RefAdv',63,'thickness','float',0.01,NULL,NULL),
	 (52,'TABULA','NL',26,'outWall','Breeze block-28cm_RefAdv',6,'thickness','float',0.27,NULL,NULL),
	 (53,'TABULA','NL',26,'outWall','Breeze block-28cm_RefAdv',43,'thickness','float',0.01,NULL,NULL),
	 (54,'TABULA','NL',27,'outWall','Breeze block-28cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (55,'TABULA','NL',27,'outWall','Breeze block-28cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (56,'TABULA','NL',27,'outWall','Breeze block-28cm_RefMed',63,'thickness','float',0.01,NULL,NULL),
	 (57,'TABULA','NL',27,'outWall','Breeze block-28cm_RefMed',6,'thickness','float',0.27,NULL,NULL),
	 (58,'TABULA','NL',27,'outWall','Breeze block-28cm_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (59,'TABULA','NL',28,'outWall','Cavity wall',4,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (60,'TABULA','NL',28,'outWall','Cavity wall',95,'thickness','float',0.1,NULL,NULL),
	 (61,'TABULA','NL',28,'outWall','Cavity wall',3,'thickness','float',0.17,NULL,NULL),
	 (62,'TABULA','NL',29,'outWall','Cavity wall_EnEV2016',4,'thickness','float',0.12,NULL,NULL),
	 (63,'TABULA','NL',29,'outWall','Cavity wall_EnEV2016',27,'thickness','float',0.1,NULL,NULL),
	 (64,'TABULA','NL',29,'outWall','Cavity wall_EnEV2016',3,'thickness','float',0.17,NULL,NULL),
	 (65,'TABULA','NL',29,'outWall','Cavity wall_EnEV2016',30,'thickness','float',0.03,NULL,NULL),
	 (66,'TABULA','NL',30,'outWall','Cavity wall_RefAdv',4,'thickness','float',0.12,NULL,NULL),
	 (67,'TABULA','NL',30,'outWall','Cavity wall_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (68,'TABULA','NL',30,'outWall','Cavity wall_RefAdv',3,'thickness','float',0.17,NULL,NULL),
	 (69,'TABULA','NL',31,'outWall','Cavity wall_RefMed',4,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (70,'TABULA','NL',31,'outWall','Cavity wall_RefMed',27,'thickness','float',0.06,NULL,NULL),
	 (71,'TABULA','NL',31,'outWall','Cavity wall_RefMed',3,'thickness','float',0.17,NULL,NULL),
	 (72,'TABULA','NL',75,'outWall','Concrete sandwich wall_1970s',62,'thickness','float',0.01,NULL,NULL),
	 (73,'TABULA','NL',75,'outWall','Concrete sandwich wall_1970s',14,'thickness','float',0.05,NULL,NULL),
	 (74,'TABULA','NL',75,'outWall','Concrete sandwich wall_1970s',26,'thickness','float',0.03,NULL,NULL),
	 (75,'TABULA','NL',75,'outWall','Concrete sandwich wall_1970s',14,'thickness','float',0.24,NULL,NULL),
	 (76,'TABULA','NL',75,'outWall','Concrete sandwich wall_1970s',43,'thickness','float',0.01,NULL,NULL),
	 (77,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (78,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',30,'thickness','float',0.11,NULL,NULL),
	 (79,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',14,'thickness','float',0.05,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (80,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',26,'thickness','float',0.03,NULL,NULL),
	 (81,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',14,'thickness','float',0.24,NULL,NULL),
	 (82,'TABULA','NL',76,'outWall','Concrete sandwich wall_1970s_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (83,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (84,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (85,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (86,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',14,'thickness','float',0.05,NULL,NULL),
	 (87,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',26,'thickness','float',0.03,NULL,NULL),
	 (88,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',14,'thickness','float',0.24,NULL,NULL),
	 (89,'TABULA','NL',77,'outWall','Concrete sandwich wall_1970s_RefAdv',43,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (90,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (91,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (92,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (93,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',14,'thickness','float',0.05,NULL,NULL),
	 (94,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',26,'thickness','float',0.03,NULL,NULL),
	 (95,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',14,'thickness','float',0.24,NULL,NULL),
	 (96,'TABULA','NL',78,'outWall','Concrete sandwich wall_1970s_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (97,'TABULA','NL',79,'outWall','Concrete sandwich wall_1980s',62,'thickness','float',0.01,NULL,NULL),
	 (98,'TABULA','NL',79,'outWall','Concrete sandwich wall_1980s',14,'thickness','float',0.05,NULL,NULL),
	 (99,'TABULA','NL',79,'outWall','Concrete sandwich wall_1980s',26,'thickness','float',0.04,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (100,'TABULA','NL',79,'outWall','Concrete sandwich wall_1980s',14,'thickness','float',0.24,NULL,NULL),
	 (101,'TABULA','NL',79,'outWall','Concrete sandwich wall_1980s',43,'thickness','float',0.01,NULL,NULL),
	 (102,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (103,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',30,'thickness','float',0.105,NULL,NULL),
	 (104,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',14,'thickness','float',0.05,NULL,NULL),
	 (105,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',26,'thickness','float',0.04,NULL,NULL),
	 (106,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',14,'thickness','float',0.24,NULL,NULL),
	 (107,'TABULA','NL',80,'outWall','Concrete sandwich wall_1980s_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (108,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (109,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',30,'thickness','float',0.24,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (110,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (111,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',14,'thickness','float',0.05,NULL,NULL),
	 (112,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',26,'thickness','float',0.04,NULL,NULL),
	 (113,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',14,'thickness','float',0.24,NULL,NULL),
	 (114,'TABULA','NL',81,'outWall','Concrete sandwich wall_1980s_RefAdv',43,'thickness','float',0.01,NULL,NULL),
	 (115,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (116,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (117,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (118,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',14,'thickness','float',0.05,NULL,NULL),
	 (119,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',26,'thickness','float',0.04,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (120,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',14,'thickness','float',0.24,NULL,NULL),
	 (121,'TABULA','NL',82,'outWall','Concrete sandwich wall_1980s_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (122,'TABULA','NL',83,'outWall','Concrete sandwich wall_1990s',62,'thickness','float',0.01,NULL,NULL),
	 (123,'TABULA','NL',83,'outWall','Concrete sandwich wall_1990s',14,'thickness','float',0.05,NULL,NULL),
	 (124,'TABULA','NL',83,'outWall','Concrete sandwich wall_1990s',26,'thickness','float',0.07,NULL,NULL),
	 (125,'TABULA','NL',83,'outWall','Concrete sandwich wall_1990s',14,'thickness','float',0.24,NULL,NULL),
	 (126,'TABULA','NL',83,'outWall','Concrete sandwich wall_1990s',43,'thickness','float',0.01,NULL,NULL),
	 (127,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (128,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',30,'thickness','float',0.085,NULL,NULL),
	 (129,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',14,'thickness','float',0.05,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (130,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',26,'thickness','float',0.07,NULL,NULL),
	 (131,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',14,'thickness','float',0.24,NULL,NULL),
	 (132,'TABULA','NL',84,'outWall','Concrete sandwich wall_1990s_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (133,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (134,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (135,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (136,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',14,'thickness','float',0.05,NULL,NULL),
	 (137,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',26,'thickness','float',0.07,NULL,NULL),
	 (138,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',14,'thickness','float',0.24,NULL,NULL),
	 (139,'TABULA','NL',85,'outWall','Concrete sandwich wall_1990s_RefAdv',43,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (140,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (141,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (142,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (143,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',14,'thickness','float',0.05,NULL,NULL),
	 (144,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',26,'thickness','float',0.07,NULL,NULL),
	 (145,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',14,'thickness','float',0.24,NULL,NULL),
	 (146,'TABULA','NL',86,'outWall','Concrete sandwich wall_1990s_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (147,'TABULA','NL',118,'outWall','Dense brickwork-32cm',63,'thickness','float',0.01,NULL,NULL),
	 (148,'TABULA','NL',118,'outWall','Dense brickwork-32cm',0,'thickness','float',0.32,NULL,NULL),
	 (149,'TABULA','NL',118,'outWall','Dense brickwork-32cm',41,'thickness','float',0.013,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (150,'TABULA','NL',119,'outWall','Dense brickwork-32cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (151,'TABULA','NL',119,'outWall','Dense brickwork-32cm_EnEV2016',30,'thickness','float',0.125,NULL,NULL),
	 (152,'TABULA','NL',119,'outWall','Dense brickwork-32cm_EnEV2016',0,'thickness','float',0.32,NULL,NULL),
	 (153,'TABULA','NL',119,'outWall','Dense brickwork-32cm_EnEV2016',41,'thickness','float',0.013,NULL,NULL),
	 (154,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (155,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (156,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',63,'thickness','float',0.01,NULL,NULL),
	 (157,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (158,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',0,'thickness','float',0.32,NULL,NULL),
	 (159,'TABULA','NL',120,'outWall','Dense brickwork-32cm_RefAdv',41,'thickness','float',0.013,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (160,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (161,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (162,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',63,'thickness','float',0.01,NULL,NULL),
	 (163,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (164,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',0,'thickness','float',0.32,NULL,NULL),
	 (165,'TABULA','NL',121,'outWall','Dense brickwork-32cm_RefMed',41,'thickness','float',0.013,NULL,NULL),
	 (166,'TABULA','NL',135,'outWall','Honeycomb brick insul-10cm',62,'thickness','float',0.01,NULL,NULL),
	 (167,'TABULA','NL',135,'outWall','Honeycomb brick insul-10cm',29,'thickness','float',0.1,NULL,NULL),
	 (168,'TABULA','NL',135,'outWall','Honeycomb brick insul-10cm',2,'thickness','float',0.24,NULL,NULL),
	 (169,'TABULA','NL',135,'outWall','Honeycomb brick insul-10cm',41,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (170,'TABULA','NL',136,'outWall','Honeycomb brick insul-10cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (171,'TABULA','NL',136,'outWall','Honeycomb brick insul-10cm_EnEV2016',29,'thickness','float',0.125,NULL,NULL),
	 (172,'TABULA','NL',136,'outWall','Honeycomb brick insul-10cm_EnEV2016',2,'thickness','float',0.24,NULL,NULL),
	 (173,'TABULA','NL',136,'outWall','Honeycomb brick insul-10cm_EnEV2016',41,'thickness','float',0.01,NULL,NULL),
	 (174,'TABULA','NL',137,'outWall','Honeycomb brick insul-12cm',62,'thickness','float',0.01,NULL,NULL),
	 (175,'TABULA','NL',137,'outWall','Honeycomb brick insul-12cm',29,'thickness','float',0.12,NULL,NULL),
	 (176,'TABULA','NL',137,'outWall','Honeycomb brick insul-12cm',2,'thickness','float',0.24,NULL,NULL),
	 (177,'TABULA','NL',137,'outWall','Honeycomb brick insul-12cm',41,'thickness','float',0.01,NULL,NULL),
	 (178,'TABULA','NL',138,'outWall','Honeycomb brick insul-12cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (179,'TABULA','NL',138,'outWall','Honeycomb brick insul-12cm_EnEV2016',29,'thickness','float',0.125,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (180,'TABULA','NL',138,'outWall','Honeycomb brick insul-12cm_EnEV2016',2,'thickness','float',0.24,NULL,NULL),
	 (181,'TABULA','NL',138,'outWall','Honeycomb brick insul-12cm_EnEV2016',41,'thickness','float',0.01,NULL,NULL),
	 (182,'TABULA','NL',139,'outWall','Honeycomb brick insul-13cm',62,'thickness','float',0.01,NULL,NULL),
	 (183,'TABULA','NL',139,'outWall','Honeycomb brick insul-13cm',29,'thickness','float',0.13,NULL,NULL),
	 (184,'TABULA','NL',139,'outWall','Honeycomb brick insul-13cm',2,'thickness','float',0.24,NULL,NULL),
	 (185,'TABULA','NL',139,'outWall','Honeycomb brick insul-13cm',41,'thickness','float',0.01,NULL,NULL),
	 (186,'TABULA','NL',140,'outWall','Honeycomb brick insul-16cm',62,'thickness','float',0.01,NULL,NULL),
	 (187,'TABULA','NL',140,'outWall','Honeycomb brick insul-16cm',29,'thickness','float',0.16,NULL,NULL),
	 (188,'TABULA','NL',140,'outWall','Honeycomb brick insul-16cm',2,'thickness','float',0.24,NULL,NULL),
	 (189,'TABULA','NL',140,'outWall','Honeycomb brick insul-16cm',41,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (190,'TABULA','NL',141,'outWall','Honeycomb brick insul-22cm',62,'thickness','float',0.01,NULL,NULL),
	 (191,'TABULA','NL',141,'outWall','Honeycomb brick insul-22cm',29,'thickness','float',0.22,NULL,NULL),
	 (192,'TABULA','NL',141,'outWall','Honeycomb brick insul-22cm',2,'thickness','float',0.24,NULL,NULL),
	 (193,'TABULA','NL',141,'outWall','Honeycomb brick insul-22cm',41,'thickness','float',0.01,NULL,NULL),
	 (194,'TABULA','NL',142,'outWall','Honeycomb brick insul-6cm',43,'thickness','float',0.01,NULL,NULL),
	 (195,'TABULA','NL',142,'outWall','Honeycomb brick insul-6cm',62,'thickness','float',0.01,NULL,NULL),
	 (196,'TABULA','NL',142,'outWall','Honeycomb brick insul-6cm',29,'thickness','float',0.06,NULL,NULL),
	 (197,'TABULA','NL',142,'outWall','Honeycomb brick insul-6cm',2,'thickness','float',0.24,NULL,NULL),
	 (198,'TABULA','NL',143,'outWall','Honeycomb brick insul-6cm-EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (199,'TABULA','NL',143,'outWall','Honeycomb brick insul-6cm-EnEV2016',30,'thickness','float',0.06,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (200,'TABULA','NL',143,'outWall','Honeycomb brick insul-6cm-EnEV2016',29,'thickness','float',0.06,NULL,NULL),
	 (201,'TABULA','NL',143,'outWall','Honeycomb brick insul-6cm-EnEV2016',2,'thickness','float',0.24,NULL,NULL),
	 (202,'TABULA','NL',143,'outWall','Honeycomb brick insul-6cm-EnEV2016',41,'thickness','float',0.01,NULL,NULL),
	 (203,'TABULA','NL',144,'outWall','Honeycomb brick-22cm',62,'thickness','float',0.01,NULL,NULL),
	 (204,'TABULA','NL',144,'outWall','Honeycomb brick-22cm',2,'thickness','float',0.22,NULL,NULL),
	 (205,'TABULA','NL',144,'outWall','Honeycomb brick-22cm',41,'thickness','float',0.01,NULL,NULL),
	 (206,'TABULA','NL',145,'outWall','Honeycomb brick-22cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (207,'TABULA','NL',145,'outWall','Honeycomb brick-22cm_EnEV2016',30,'thickness','float',0.11,NULL,NULL),
	 (208,'TABULA','NL',145,'outWall','Honeycomb brick-22cm_EnEV2016',2,'thickness','float',0.22,NULL,NULL),
	 (209,'TABULA','NL',145,'outWall','Honeycomb brick-22cm_EnEV2016',41,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (210,'TABULA','NL',146,'outWall','Honeycomb brick-22cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (211,'TABULA','NL',146,'outWall','Honeycomb brick-22cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (212,'TABULA','NL',146,'outWall','Honeycomb brick-22cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (213,'TABULA','NL',146,'outWall','Honeycomb brick-22cm_RefAdv',2,'thickness','float',0.22,NULL,NULL),
	 (214,'TABULA','NL',146,'outWall','Honeycomb brick-22cm_RefAdv',41,'thickness','float',0.01,NULL,NULL),
	 (215,'TABULA','NL',147,'outWall','Honeycomb brick-22cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (216,'TABULA','NL',147,'outWall','Honeycomb brick-22cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (217,'TABULA','NL',147,'outWall','Honeycomb brick-22cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (218,'TABULA','NL',147,'outWall','Honeycomb brick-22cm_RefMed',2,'thickness','float',0.22,NULL,NULL),
	 (219,'TABULA','NL',147,'outWall','Honeycomb brick-22cm_RefMed',41,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (220,'TABULA','NL',148,'outWall','Honeycomb brick-30cm',62,'thickness','float',0.01,NULL,NULL),
	 (221,'TABULA','NL',148,'outWall','Honeycomb brick-30cm',2,'thickness','float',0.3,NULL,NULL),
	 (222,'TABULA','NL',148,'outWall','Honeycomb brick-30cm',43,'thickness','float',0.01,NULL,NULL),
	 (223,'TABULA','NL',149,'outWall','Honeycomb brick-30cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (224,'TABULA','NL',149,'outWall','Honeycomb brick-30cm_EnEV2016',30,'thickness','float',0.105,NULL,NULL),
	 (225,'TABULA','NL',149,'outWall','Honeycomb brick-30cm_EnEV2016',2,'thickness','float',0.3,NULL,NULL),
	 (226,'TABULA','NL',149,'outWall','Honeycomb brick-30cm_EnEV2016',43,'thickness','float',0.01,NULL,NULL),
	 (227,'TABULA','NL',150,'outWall','Honeycomb brick-30cm_RefAdv',62,'thickness','float',0.01,NULL,NULL),
	 (228,'TABULA','NL',150,'outWall','Honeycomb brick-30cm_RefAdv',30,'thickness','float',0.24,NULL,NULL),
	 (229,'TABULA','NL',150,'outWall','Honeycomb brick-30cm_RefAdv',61,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (230,'TABULA','NL',150,'outWall','Honeycomb brick-30cm_RefAdv',2,'thickness','float',0.3,NULL,NULL),
	 (231,'TABULA','NL',150,'outWall','Honeycomb brick-30cm_RefAdv',43,'thickness','float',0.01,NULL,NULL),
	 (232,'TABULA','NL',151,'outWall','Honeycomb brick-30cm_RefMed',62,'thickness','float',0.01,NULL,NULL),
	 (233,'TABULA','NL',151,'outWall','Honeycomb brick-30cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (234,'TABULA','NL',151,'outWall','Honeycomb brick-30cm_RefMed',61,'thickness','float',0.01,NULL,NULL),
	 (235,'TABULA','NL',151,'outWall','Honeycomb brick-30cm_RefMed',2,'thickness','float',0.3,NULL,NULL),
	 (236,'TABULA','NL',151,'outWall','Honeycomb brick-30cm_RefMed',43,'thickness','float',0.01,NULL,NULL),
	 (237,'TABULA','NL',152,'outWall','Loam-timber-frames',93,'thickness','float',0.2,NULL,NULL),
	 (238,'TABULA','NL',153,'outWall','Loam-timber-frames_ EnEV2016',93,'thickness','float',0.2,NULL,NULL),
	 (239,'TABULA','NL',153,'outWall','Loam-timber-frames_ EnEV2016',30,'thickness','float',0.125,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (240,'TABULA','NL',154,'outWall','Loam-timber-frames_ ref adv',30,'thickness','float',0.24,NULL,NULL),
	 (241,'TABULA','NL',154,'outWall','Loam-timber-frames_ ref adv',93,'thickness','float',0.2,NULL,NULL),
	 (242,'TABULA','NL',155,'outWall','Loam-timber-frames_ ref med',93,'thickness','float',0.2,NULL,NULL),
	 (243,'TABULA','NL',155,'outWall','Loam-timber-frames_ ref med',21,'thickness','float',0.1,NULL,NULL),
	 (244,'TABULA','NL',156,'outWall','Reinforced concrete insul-11cm',62,'thickness','float',0.01,NULL,NULL),
	 (245,'TABULA','NL',156,'outWall','Reinforced concrete insul-11cm',30,'thickness','float',0.11,NULL,NULL),
	 (246,'TABULA','NL',156,'outWall','Reinforced concrete insul-11cm',14,'thickness','float',0.24,NULL,NULL),
	 (247,'TABULA','NL',156,'outWall','Reinforced concrete insul-11cm',41,'thickness','float',0.01,NULL,NULL),
	 (248,'TABULA','NL',157,'outWall','Reinforced concrete insul-11cm_EnEV2016',62,'thickness','float',0.01,NULL,NULL),
	 (249,'TABULA','NL',157,'outWall','Reinforced concrete insul-11cm_EnEV2016',30,'thickness','float',0.025,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (250,'TABULA','NL',157,'outWall','Reinforced concrete insul-11cm_EnEV2016',30,'thickness','float',0.11,NULL,NULL),
	 (251,'TABULA','NL',157,'outWall','Reinforced concrete insul-11cm_EnEV2016',14,'thickness','float',0.24,NULL,NULL),
	 (252,'TABULA','NL',157,'outWall','Reinforced concrete insul-11cm_EnEV2016',41,'thickness','float',0.01,NULL,NULL),
	 (253,'TABULA','NL',158,'outWall','Reinforced concrete insul-14cm',62,'thickness','float',0.01,NULL,NULL),
	 (254,'TABULA','NL',158,'outWall','Reinforced concrete insul-14cm',30,'thickness','float',0.14,NULL,NULL),
	 (255,'TABULA','NL',158,'outWall','Reinforced concrete insul-14cm',14,'thickness','float',0.24,NULL,NULL),
	 (256,'TABULA','NL',158,'outWall','Reinforced concrete insul-14cm',41,'thickness','float',0.01,NULL,NULL),
	 (257,'TABULA','NL',159,'outWall','Reinforced concrete insul-16cm',62,'thickness','float',0.01,NULL,NULL),
	 (258,'TABULA','NL',159,'outWall','Reinforced concrete insul-16cm',30,'thickness','float',0.16,NULL,NULL),
	 (259,'TABULA','NL',159,'outWall','Reinforced concrete insul-16cm',14,'thickness','float',0.24,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (260,'TABULA','NL',159,'outWall','Reinforced concrete insul-16cm',41,'thickness','float',0.01,NULL,NULL),
	 (261,'TABULA','NL',160,'outWall','Reinforced concrete insul-22cm',62,'thickness','float',0.01,NULL,NULL),
	 (262,'TABULA','NL',160,'outWall','Reinforced concrete insul-22cm',30,'thickness','float',0.22,NULL,NULL),
	 (263,'TABULA','NL',160,'outWall','Reinforced concrete insul-22cm',14,'thickness','float',0.24,NULL,NULL),
	 (264,'TABULA','NL',160,'outWall','Reinforced concrete insul-22cm',41,'thickness','float',0.01,NULL,NULL),
	 (265,'TABULA','NL',199,'outWall','Wall_0,21',0,'thickness','float',0.2,NULL,NULL),
	 (266,'TABULA','NL',199,'outWall','Wall_0,21',23,'thickness','float',0.197,NULL,NULL),
	 (267,'TABULA','NL',199,'outWall','Wall_0,21',62,'thickness','float',0.0,NULL,NULL),
	 (268,'TABULA','NL',200,'outWall','Wall_0,27',0,'thickness','float',0.2,NULL,NULL),
	 (269,'TABULA','NL',200,'outWall','Wall_0,27',23,'thickness','float',0.149,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (270,'TABULA','NL',200,'outWall','Wall_0,27',62,'thickness','float',0.0,NULL,NULL),
	 (271,'TABULA','NL',201,'outWall','Wall_0,36',0,'thickness','float',0.2,NULL,NULL),
	 (272,'TABULA','NL',201,'outWall','Wall_0,36',23,'thickness','float',0.108,NULL,NULL),
	 (273,'TABULA','NL',201,'outWall','Wall_0,36',62,'thickness','float',0.0,NULL,NULL),
	 (274,'TABULA','NL',202,'outWall','Wall_0,64',0,'thickness','float',0.2,NULL,NULL),
	 (275,'TABULA','NL',202,'outWall','Wall_0,64',23,'thickness','float',0.053,NULL,NULL),
	 (276,'TABULA','NL',202,'outWall','Wall_0,64',62,'thickness','float',0.0,NULL,NULL),
	 (277,'TABULA','NL',203,'outWall','Wall_1,45',0,'thickness','float',0.2,NULL,NULL),
	 (278,'TABULA','NL',203,'outWall','Wall_1,45',23,'thickness','float',0.014,NULL,NULL),
	 (279,'TABULA','NL',203,'outWall','Wall_1,45',62,'thickness','float',0.0,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (280,'TABULA','NL',204,'outWall','Wall_1,61',0,'thickness','float',0.2,NULL,NULL),
	 (281,'TABULA','NL',204,'outWall','Wall_1,61',23,'thickness','float',0.011,NULL,NULL),
	 (282,'TABULA','NL',204,'outWall','Wall_1,61',62,'thickness','float',0.0,NULL,NULL),
	 (283,'TABULA','NL',205,'outWall','Wall_2,22',0,'thickness','float',0.2,NULL,NULL),
	 (284,'TABULA','NL',205,'outWall','Wall_2,22',23,'thickness','float',0.003,NULL,NULL),
	 (285,'TABULA','NL',205,'outWall','Wall_2,22',62,'thickness','float',0.005,NULL,NULL),
	 (286,'TABULA','NL',87,'groundShell','Concrete slab insul-10cm',14,'thickness','float',0.16,NULL,NULL),
	 (287,'TABULA','NL',87,'groundShell','Concrete slab insul-10cm',29,'thickness','float',0.1,NULL,NULL),
	 (288,'TABULA','NL',87,'groundShell','Concrete slab insul-10cm',59,'thickness','float',0.04,NULL,NULL),
	 (289,'TABULA','NL',88,'groundShell','Concrete slab insul-10cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (290,'TABULA','NL',88,'groundShell','Concrete slab insul-10cm_EnEV2016',29,'thickness','float',0.12,NULL,NULL),
	 (291,'TABULA','NL',88,'groundShell','Concrete slab insul-10cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (292,'TABULA','NL',89,'groundShell','Concrete slab insul-12cm',14,'thickness','float',0.16,NULL,NULL),
	 (293,'TABULA','NL',89,'groundShell','Concrete slab insul-12cm',29,'thickness','float',0.12,NULL,NULL),
	 (294,'TABULA','NL',89,'groundShell','Concrete slab insul-12cm',59,'thickness','float',0.04,NULL,NULL),
	 (295,'TABULA','NL',90,'groundShell','Concrete slab insul-14cm',14,'thickness','float',0.16,NULL,NULL),
	 (296,'TABULA','NL',90,'groundShell','Concrete slab insul-14cm',30,'thickness','float',0.14,NULL,NULL),
	 (297,'TABULA','NL',90,'groundShell','Concrete slab insul-14cm',59,'thickness','float',0.04,NULL,NULL),
	 (298,'TABULA','NL',91,'groundShell','Concrete slab insul-16cm',14,'thickness','float',0.16,NULL,NULL),
	 (299,'TABULA','NL',91,'groundShell','Concrete slab insul-16cm',30,'thickness','float',0.16,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (300,'TABULA','NL',91,'groundShell','Concrete slab insul-16cm',59,'thickness','float',0.04,NULL,NULL),
	 (301,'TABULA','NL',92,'groundShell','Concrete slab insul-1cm',14,'thickness','float',0.16,NULL,NULL),
	 (302,'TABULA','NL',92,'groundShell','Concrete slab insul-1cm',30,'thickness','float',0.01,NULL,NULL),
	 (303,'TABULA','NL',92,'groundShell','Concrete slab insul-1cm',59,'thickness','float',0.04,NULL,NULL),
	 (304,'TABULA','NL',93,'groundShell','Concrete slab insul-1cm_EnEV2016',30,'thickness','float',0.095,NULL,NULL),
	 (305,'TABULA','NL',93,'groundShell','Concrete slab insul-1cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (306,'TABULA','NL',93,'groundShell','Concrete slab insul-1cm_EnEV2016',30,'thickness','float',0.01,NULL,NULL),
	 (307,'TABULA','NL',93,'groundShell','Concrete slab insul-1cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (308,'TABULA','NL',94,'groundShell','Concrete slab insul-1cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (309,'TABULA','NL',94,'groundShell','Concrete slab insul-1cm_RefAdv',14,'thickness','float',0.16,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (310,'TABULA','NL',94,'groundShell','Concrete slab insul-1cm_RefAdv',30,'thickness','float',0.01,NULL,NULL),
	 (311,'TABULA','NL',94,'groundShell','Concrete slab insul-1cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (312,'TABULA','NL',95,'groundShell','Concrete slab insul-1cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (313,'TABULA','NL',95,'groundShell','Concrete slab insul-1cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (314,'TABULA','NL',95,'groundShell','Concrete slab insul-1cm_RefMed',30,'thickness','float',0.01,NULL,NULL),
	 (315,'TABULA','NL',95,'groundShell','Concrete slab insul-1cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (316,'TABULA','NL',96,'groundShell','Concrete slab insul-2.5cm',14,'thickness','float',0.16,NULL,NULL),
	 (317,'TABULA','NL',96,'groundShell','Concrete slab insul-2.5cm',30,'thickness','float',0.025,NULL,NULL),
	 (318,'TABULA','NL',96,'groundShell','Concrete slab insul-2.5cm',59,'thickness','float',0.04,NULL,NULL),
	 (319,'TABULA','NL',97,'groundShell','Concrete slab insul-2.5cm_EnEV2016',30,'thickness','float',0.08,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (320,'TABULA','NL',97,'groundShell','Concrete slab insul-2.5cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (321,'TABULA','NL',97,'groundShell','Concrete slab insul-2.5cm_EnEV2016',30,'thickness','float',0.025,NULL,NULL),
	 (322,'TABULA','NL',97,'groundShell','Concrete slab insul-2.5cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (323,'TABULA','NL',98,'groundShell','Concrete slab insul-2.5cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (324,'TABULA','NL',98,'groundShell','Concrete slab insul-2.5cm_RefAdv',14,'thickness','float',0.16,NULL,NULL),
	 (325,'TABULA','NL',98,'groundShell','Concrete slab insul-2.5cm_RefAdv',30,'thickness','float',0.025,NULL,NULL),
	 (326,'TABULA','NL',98,'groundShell','Concrete slab insul-2.5cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (327,'TABULA','NL',99,'groundShell','Concrete slab insul-2.5cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (328,'TABULA','NL',99,'groundShell','Concrete slab insul-2.5cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (329,'TABULA','NL',99,'groundShell','Concrete slab insul-2.5cm_RefMed',30,'thickness','float',0.025,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (330,'TABULA','NL',99,'groundShell','Concrete slab insul-2.5cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (331,'TABULA','NL',100,'groundShell','Concrete slab insul-3cm',14,'thickness','float',0.16,NULL,NULL),
	 (332,'TABULA','NL',100,'groundShell','Concrete slab insul-3cm',30,'thickness','float',0.03,NULL,NULL),
	 (333,'TABULA','NL',100,'groundShell','Concrete slab insul-3cm',59,'thickness','float',0.04,NULL,NULL),
	 (334,'TABULA','NL',101,'groundShell','Concrete slab insul-3cm_EnEV2016',30,'thickness','float',0.075,NULL,NULL),
	 (335,'TABULA','NL',101,'groundShell','Concrete slab insul-3cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (336,'TABULA','NL',101,'groundShell','Concrete slab insul-3cm_EnEV2016',30,'thickness','float',0.03,NULL,NULL),
	 (337,'TABULA','NL',101,'groundShell','Concrete slab insul-3cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (338,'TABULA','NL',102,'groundShell','Concrete slab insul-3cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (339,'TABULA','NL',102,'groundShell','Concrete slab insul-3cm_RefAdv',14,'thickness','float',0.16,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (340,'TABULA','NL',102,'groundShell','Concrete slab insul-3cm_RefAdv',30,'thickness','float',0.03,NULL,NULL),
	 (341,'TABULA','NL',102,'groundShell','Concrete slab insul-3cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (342,'TABULA','NL',103,'groundShell','Concrete slab insul-3cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (343,'TABULA','NL',103,'groundShell','Concrete slab insul-3cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (344,'TABULA','NL',103,'groundShell','Concrete slab insul-3cm_RefMed',30,'thickness','float',0.03,NULL,NULL),
	 (345,'TABULA','NL',103,'groundShell','Concrete slab insul-3cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (346,'TABULA','NL',104,'groundShell','Concrete slab insul-4.5cm',14,'thickness','float',0.16,NULL,NULL),
	 (347,'TABULA','NL',104,'groundShell','Concrete slab insul-4.5cm',30,'thickness','float',0.045,NULL,NULL),
	 (348,'TABULA','NL',104,'groundShell','Concrete slab insul-4.5cm',59,'thickness','float',0.04,NULL,NULL),
	 (349,'TABULA','NL',105,'groundShell','Concrete slab insul-4.5cm_EnEV2016',30,'thickness','float',0.06,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (350,'TABULA','NL',105,'groundShell','Concrete slab insul-4.5cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (351,'TABULA','NL',105,'groundShell','Concrete slab insul-4.5cm_EnEV2016',30,'thickness','float',0.045,NULL,NULL),
	 (352,'TABULA','NL',105,'groundShell','Concrete slab insul-4.5cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (353,'TABULA','NL',106,'groundShell','Concrete slab insul-4.5cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (354,'TABULA','NL',106,'groundShell','Concrete slab insul-4.5cm_RefAdv',14,'thickness','float',0.16,NULL,NULL),
	 (355,'TABULA','NL',106,'groundShell','Concrete slab insul-4.5cm_RefAdv',30,'thickness','float',0.045,NULL,NULL),
	 (356,'TABULA','NL',106,'groundShell','Concrete slab insul-4.5cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (357,'TABULA','NL',107,'groundShell','Concrete slab insul-4.5cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (358,'TABULA','NL',107,'groundShell','Concrete slab insul-4.5cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (359,'TABULA','NL',107,'groundShell','Concrete slab insul-4.5cm_RefMed',30,'thickness','float',0.045,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (360,'TABULA','NL',107,'groundShell','Concrete slab insul-4.5cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (361,'TABULA','NL',108,'groundShell','Concrete slab insul-4cm',14,'thickness','float',0.16,NULL,NULL),
	 (362,'TABULA','NL',108,'groundShell','Concrete slab insul-4cm',30,'thickness','float',0.04,NULL,NULL),
	 (363,'TABULA','NL',108,'groundShell','Concrete slab insul-4cm',59,'thickness','float',0.04,NULL,NULL),
	 (364,'TABULA','NL',109,'groundShell','Concrete slab insul-4cm_EnEV2016',30,'thickness','float',0.065,NULL,NULL),
	 (365,'TABULA','NL',109,'groundShell','Concrete slab insul-4cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (366,'TABULA','NL',109,'groundShell','Concrete slab insul-4cm_EnEV2016',30,'thickness','float',0.04,NULL,NULL),
	 (367,'TABULA','NL',109,'groundShell','Concrete slab insul-4cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (368,'TABULA','NL',110,'groundShell','Concrete slab insul-4cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (369,'TABULA','NL',110,'groundShell','Concrete slab insul-4cm_RefAdv',14,'thickness','float',0.16,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (370,'TABULA','NL',110,'groundShell','Concrete slab insul-4cm_RefAdv',30,'thickness','float',0.04,NULL,NULL),
	 (371,'TABULA','NL',110,'groundShell','Concrete slab insul-4cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (372,'TABULA','NL',111,'groundShell','Concrete slab insul-4cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (373,'TABULA','NL',111,'groundShell','Concrete slab insul-4cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (374,'TABULA','NL',111,'groundShell','Concrete slab insul-4cm_RefMed',30,'thickness','float',0.04,NULL,NULL),
	 (375,'TABULA','NL',111,'groundShell','Concrete slab insul-4cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (376,'TABULA','NL',112,'groundShell','Concrete slab insul-6cm',14,'thickness','float',0.16,NULL,NULL),
	 (377,'TABULA','NL',112,'groundShell','Concrete slab insul-6cm',30,'thickness','float',0.06,NULL,NULL),
	 (378,'TABULA','NL',112,'groundShell','Concrete slab insul-6cm',59,'thickness','float',0.04,NULL,NULL),
	 (379,'TABULA','NL',113,'groundShell','Concrete slab insul-6cm_EnEV2016',30,'thickness','float',0.045,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (380,'TABULA','NL',113,'groundShell','Concrete slab insul-6cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (381,'TABULA','NL',113,'groundShell','Concrete slab insul-6cm_EnEV2016',30,'thickness','float',0.06,NULL,NULL),
	 (382,'TABULA','NL',113,'groundShell','Concrete slab insul-6cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (383,'TABULA','NL',114,'groundShell','Concrete slab insul-6cm_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (384,'TABULA','NL',114,'groundShell','Concrete slab insul-6cm_RefAdv',14,'thickness','float',0.16,NULL,NULL),
	 (385,'TABULA','NL',114,'groundShell','Concrete slab insul-6cm_RefAdv',30,'thickness','float',0.06,NULL,NULL),
	 (386,'TABULA','NL',114,'groundShell','Concrete slab insul-6cm_RefAdv',59,'thickness','float',0.04,NULL,NULL),
	 (387,'TABULA','NL',115,'groundShell','Concrete slab insul-6cm_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (388,'TABULA','NL',115,'groundShell','Concrete slab insul-6cm_RefMed',14,'thickness','float',0.16,NULL,NULL),
	 (389,'TABULA','NL',115,'groundShell','Concrete slab insul-6cm_RefMed',30,'thickness','float',0.06,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (390,'TABULA','NL',115,'groundShell','Concrete slab insul-6cm_RefMed',59,'thickness','float',0.04,NULL,NULL),
	 (391,'TABULA','NL',116,'groundShell','Concrete slab insul-7cm',14,'thickness','float',0.16,NULL,NULL),
	 (392,'TABULA','NL',116,'groundShell','Concrete slab insul-7cm',30,'thickness','float',0.07,NULL,NULL),
	 (393,'TABULA','NL',116,'groundShell','Concrete slab insul-7cm',59,'thickness','float',0.04,NULL,NULL),
	 (394,'TABULA','NL',117,'groundShell','Concrete slab insul-7cm_EnEV2016',30,'thickness','float',0.035,NULL,NULL),
	 (395,'TABULA','NL',117,'groundShell','Concrete slab insul-7cm_EnEV2016',14,'thickness','float',0.16,NULL,NULL),
	 (396,'TABULA','NL',117,'groundShell','Concrete slab insul-7cm_EnEV2016',30,'thickness','float',0.07,NULL,NULL),
	 (397,'TABULA','NL',117,'groundShell','Concrete slab insul-7cm_EnEV2016',59,'thickness','float',0.04,NULL,NULL),
	 (398,'TABULA','NL',122,'groundShell','Floor_0,25',0,'thickness','float',0.2,NULL,NULL),
	 (399,'TABULA','NL',122,'groundShell','Floor_0,25',23,'thickness','float',0.163,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (400,'TABULA','NL',122,'groundShell','Floor_0,25',62,'thickness','float',0.0,NULL,NULL),
	 (401,'TABULA','NL',123,'groundShell','Floor_0,27',0,'thickness','float',0.2,NULL,NULL),
	 (402,'TABULA','NL',123,'groundShell','Floor_0,27',23,'thickness','float',0.15,NULL,NULL),
	 (403,'TABULA','NL',123,'groundShell','Floor_0,27',62,'thickness','float',0.0,NULL,NULL),
	 (404,'TABULA','NL',124,'groundShell','Floor_0,32',0,'thickness','float',0.2,NULL,NULL),
	 (405,'TABULA','NL',124,'groundShell','Floor_0,32',23,'thickness','float',0.12,NULL,NULL),
	 (406,'TABULA','NL',124,'groundShell','Floor_0,32',62,'thickness','float',0.0,NULL,NULL),
	 (407,'TABULA','NL',125,'groundShell','Floor_0,36',0,'thickness','float',0.2,NULL,NULL),
	 (408,'TABULA','NL',125,'groundShell','Floor_0,36',23,'thickness','float',0.108,NULL,NULL),
	 (409,'TABULA','NL',125,'groundShell','Floor_0,36',62,'thickness','float',0.0,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (410,'TABULA','NL',126,'groundShell','Floor_0,54',0,'thickness','float',0.2,NULL,NULL),
	 (411,'TABULA','NL',126,'groundShell','Floor_0,54',23,'thickness','float',0.065,NULL,NULL),
	 (412,'TABULA','NL',126,'groundShell','Floor_0,54',62,'thickness','float',0.0,NULL,NULL),
	 (413,'TABULA','NL',127,'groundShell','Floor_0,64',0,'thickness','float',0.2,NULL,NULL),
	 (414,'TABULA','NL',127,'groundShell','Floor_0,64',23,'thickness','float',0.05,NULL,NULL),
	 (415,'TABULA','NL',127,'groundShell','Floor_0,64',62,'thickness','float',0.02,NULL,NULL),
	 (416,'TABULA','NL',128,'groundShell','Floor_1,14',0,'thickness','float',0.2,NULL,NULL),
	 (417,'TABULA','NL',128,'groundShell','Floor_1,14',23,'thickness','float',0.02,NULL,NULL),
	 (418,'TABULA','NL',128,'groundShell','Floor_1,14',62,'thickness','float',0.01,NULL,NULL),
	 (419,'TABULA','NL',129,'groundShell','Floor_1,28',0,'thickness','float',0.2,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (420,'TABULA','NL',129,'groundShell','Floor_1,28',23,'thickness','float',0.016,NULL,NULL),
	 (421,'TABULA','NL',129,'groundShell','Floor_1,28',62,'thickness','float',0.005,NULL,NULL),
	 (422,'TABULA','NL',130,'groundShell','Floor_1,37',0,'thickness','float',0.2,NULL,NULL),
	 (423,'TABULA','NL',130,'groundShell','Floor_1,37',23,'thickness','float',0.014,NULL,NULL),
	 (424,'TABULA','NL',130,'groundShell','Floor_1,37',62,'thickness','float',0.0,NULL,NULL),
	 (425,'TABULA','NL',131,'groundShell','Floor_1,71',0,'thickness','float',0.2,NULL,NULL),
	 (426,'TABULA','NL',131,'groundShell','Floor_1,71',23,'thickness','float',0.007,NULL,NULL),
	 (427,'TABULA','NL',131,'groundShell','Floor_1,71',62,'thickness','float',0.01,NULL,NULL),
	 (428,'TABULA','NL',132,'groundShell','Floor_1,72',0,'thickness','float',0.2,NULL,NULL),
	 (429,'TABULA','NL',132,'groundShell','Floor_1,72',23,'thickness','float',0.007,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (430,'TABULA','NL',132,'groundShell','Floor_1,72',62,'thickness','float',0.005,NULL,NULL),
	 (431,'TABULA','NL',133,'groundShell','Floor_2,33',0,'thickness','float',0.2,NULL,NULL),
	 (432,'TABULA','NL',133,'groundShell','Floor_2,33',23,'thickness','float',0.0,NULL,NULL),
	 (433,'TABULA','NL',133,'groundShell','Floor_2,33',62,'thickness','float',0.009,NULL,NULL),
	 (434,'TABULA','NL',134,'groundShell','Floor_2,44',0,'thickness','float',0.19,NULL,NULL),
	 (435,'TABULA','NL',134,'groundShell','Floor_2,44',23,'thickness','float',0.0,NULL,NULL),
	 (436,'TABULA','NL',134,'groundShell','Floor_2,44',62,'thickness','float',0.001,NULL,NULL),
	 (437,'TABULA','NL',175,'groundShell','Sand stone on sand',54,'thickness','float',0.01,NULL,NULL),
	 (438,'TABULA','NL',175,'groundShell','Sand stone on sand',46,'thickness','float',0.15,NULL,NULL),
	 (439,'TABULA','NL',176,'groundShell','Sand stone on sand_EnEV2016',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (440,'TABULA','NL',176,'groundShell','Sand stone on sand_EnEV2016',30,'thickness','float',0.095,NULL,NULL),
	 (441,'TABULA','NL',176,'groundShell','Sand stone on sand_EnEV2016',54,'thickness','float',0.035,NULL,NULL),
	 (442,'TABULA','NL',176,'groundShell','Sand stone on sand_EnEV2016',46,'thickness','float',0.15,NULL,NULL),
	 (443,'TABULA','NL',177,'groundShell','Sand stone on sand_RefAdv',54,'thickness','float',0.01,NULL,NULL),
	 (444,'TABULA','NL',177,'groundShell','Sand stone on sand_RefAdv',46,'thickness','float',0.15,NULL,NULL),
	 (445,'TABULA','NL',177,'groundShell','Sand stone on sand_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (446,'TABULA','NL',178,'groundShell','Sand stone on sand_RefMed',54,'thickness','float',0.01,NULL,NULL),
	 (447,'TABULA','NL',178,'groundShell','Sand stone on sand_RefMed',46,'thickness','float',0.15,NULL,NULL),
	 (448,'TABULA','NL',178,'groundShell','Sand stone on sand_RefMed',30,'thickness','float',0.06,NULL,NULL),
	 (449,'TABULA','NL',214,'groundShell','Wooden floor infill cinder aggregate',7,'thickness','float',0.18,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (450,'TABULA','NL',214,'groundShell','Wooden floor infill cinder aggregate',55,'thickness','float',0.1,NULL,NULL),
	 (451,'TABULA','NL',214,'groundShell','Wooden floor infill cinder aggregate',82,'thickness','float',0.03,NULL,NULL),
	 (452,'TABULA','NL',215,'groundShell','Wooden floor infill cinder aggregate_EnEV2016',30,'thickness','float',0.084,NULL,NULL),
	 (453,'TABULA','NL',215,'groundShell','Wooden floor infill cinder aggregate_EnEV2016',7,'thickness','float',0.18,NULL,NULL),
	 (454,'TABULA','NL',215,'groundShell','Wooden floor infill cinder aggregate_EnEV2016',55,'thickness','float',0.1,NULL,NULL),
	 (455,'TABULA','NL',215,'groundShell','Wooden floor infill cinder aggregate_EnEV2016',82,'thickness','float',0.03,NULL,NULL),
	 (456,'TABULA','NL',216,'groundShell','Wooden floor infill cinder aggregate_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (457,'TABULA','NL',216,'groundShell','Wooden floor infill cinder aggregate_RefAdv',7,'thickness','float',0.18,NULL,NULL),
	 (458,'TABULA','NL',216,'groundShell','Wooden floor infill cinder aggregate_RefAdv',55,'thickness','float',0.1,NULL,NULL),
	 (459,'TABULA','NL',216,'groundShell','Wooden floor infill cinder aggregate_RefAdv',82,'thickness','float',0.03,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (460,'TABULA','NL',217,'groundShell','Wooden floor infill cinder aggregate_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (461,'TABULA','NL',217,'groundShell','Wooden floor infill cinder aggregate_RefMed',7,'thickness','float',0.18,NULL,NULL),
	 (462,'TABULA','NL',217,'groundShell','Wooden floor infill cinder aggregate_RefMed',55,'thickness','float',0.1,NULL,NULL),
	 (463,'TABULA','NL',217,'groundShell','Wooden floor infill cinder aggregate_RefMed',82,'thickness','float',0.03,NULL,NULL),
	 (464,'TABULA','NL',218,'groundShell','Wooden floor infill cob',82,'thickness','float',0.01,NULL,NULL),
	 (465,'TABULA','NL',218,'groundShell','Wooden floor infill cob',93,'thickness','float',0.25,NULL,NULL),
	 (466,'TABULA','NL',218,'groundShell','Wooden floor infill cob',94,'thickness','float',0.1,NULL,NULL),
	 (467,'TABULA','NL',218,'groundShell','Wooden floor infill cob',89,'thickness','float',0.02,NULL,NULL),
	 (468,'TABULA','NL',219,'groundShell','Wooden floor infill cob _EnEV2016',30,'thickness','float',0.075,NULL,NULL),
	 (469,'TABULA','NL',219,'groundShell','Wooden floor infill cob _EnEV2016',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (470,'TABULA','NL',219,'groundShell','Wooden floor infill cob _EnEV2016',93,'thickness','float',0.25,NULL,NULL),
	 (471,'TABULA','NL',219,'groundShell','Wooden floor infill cob _EnEV2016',94,'thickness','float',0.1,NULL,NULL),
	 (472,'TABULA','NL',219,'groundShell','Wooden floor infill cob _EnEV2016',89,'thickness','float',0.02,NULL,NULL),
	 (473,'TABULA','NL',220,'groundShell','Wooden floor infill cob _RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (474,'TABULA','NL',220,'groundShell','Wooden floor infill cob _RefAdv',82,'thickness','float',0.01,NULL,NULL),
	 (475,'TABULA','NL',220,'groundShell','Wooden floor infill cob _RefAdv',93,'thickness','float',0.25,NULL,NULL),
	 (476,'TABULA','NL',220,'groundShell','Wooden floor infill cob _RefAdv',94,'thickness','float',0.1,NULL,NULL),
	 (477,'TABULA','NL',220,'groundShell','Wooden floor infill cob _RefAdv',89,'thickness','float',0.02,NULL,NULL),
	 (478,'TABULA','NL',221,'groundShell','Wooden floor infill cob _RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (479,'TABULA','NL',221,'groundShell','Wooden floor infill cob _RefMed',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (480,'TABULA','NL',221,'groundShell','Wooden floor infill cob _RefMed',93,'thickness','float',0.25,NULL,NULL),
	 (481,'TABULA','NL',221,'groundShell','Wooden floor infill cob _RefMed',94,'thickness','float',0.1,NULL,NULL),
	 (482,'TABULA','NL',221,'groundShell','Wooden floor infill cob _RefMed',89,'thickness','float',0.02,NULL,NULL),
	 (483,'TABULA','NL',222,'groundShell','Wooden floor infill sand',7,'thickness','float',0.18,NULL,NULL),
	 (484,'TABULA','NL',222,'groundShell','Wooden floor infill sand',54,'thickness','float',0.03,NULL,NULL),
	 (485,'TABULA','NL',222,'groundShell','Wooden floor infill sand',82,'thickness','float',0.03,NULL,NULL),
	 (486,'TABULA','NL',223,'groundShell','Wooden floor infill sand_EnEV2016',30,'thickness','float',0.085,NULL,NULL),
	 (487,'TABULA','NL',223,'groundShell','Wooden floor infill sand_EnEV2016',7,'thickness','float',0.18,NULL,NULL),
	 (488,'TABULA','NL',223,'groundShell','Wooden floor infill sand_EnEV2016',54,'thickness','float',0.03,NULL,NULL),
	 (489,'TABULA','NL',223,'groundShell','Wooden floor infill sand_EnEV2016',82,'thickness','float',0.03,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (490,'TABULA','NL',224,'groundShell','Wooden floor infill sand_RefAdv',30,'thickness','float',0.12,NULL,NULL),
	 (491,'TABULA','NL',224,'groundShell','Wooden floor infill sand_RefAdv',7,'thickness','float',0.18,NULL,NULL),
	 (492,'TABULA','NL',224,'groundShell','Wooden floor infill sand_RefAdv',54,'thickness','float',0.03,NULL,NULL),
	 (493,'TABULA','NL',224,'groundShell','Wooden floor infill sand_RefAdv',82,'thickness','float',0.03,NULL,NULL),
	 (494,'TABULA','NL',225,'groundShell','Wooden floor infill sand_RefMed',30,'thickness','float',0.08,NULL,NULL),
	 (495,'TABULA','NL',225,'groundShell','Wooden floor infill sand_RefMed',7,'thickness','float',0.18,NULL,NULL),
	 (496,'TABULA','NL',225,'groundShell','Wooden floor infill sand_RefMed',54,'thickness','float',0.03,NULL,NULL),
	 (497,'TABULA','NL',225,'groundShell','Wooden floor infill sand_RefMed',82,'thickness','float',0.03,NULL,NULL),
	 (498,'TABULA','NL',161,'pitchedRoof','Roof1_0,16',0,'thickness','float',0.2,NULL,NULL),
	 (499,'TABULA','NL',161,'pitchedRoof','Roof1_0,16',23,'thickness','float',0.264,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (500,'TABULA','NL',161,'pitchedRoof','Roof1_0,16',62,'thickness','float',0.0,NULL,NULL),
	 (501,'TABULA','NL',162,'pitchedRoof','Roof1_0,23',0,'thickness','float',0.2,NULL,NULL),
	 (502,'TABULA','NL',162,'pitchedRoof','Roof1_0,23',23,'thickness','float',0.178,NULL,NULL),
	 (503,'TABULA','NL',162,'pitchedRoof','Roof1_0,23',62,'thickness','float',0.0,NULL,NULL),
	 (504,'TABULA','NL',163,'pitchedRoof','Roof1_0,36',0,'thickness','float',0.2,NULL,NULL),
	 (505,'TABULA','NL',163,'pitchedRoof','Roof1_0,36',23,'thickness','float',0.108,NULL,NULL),
	 (506,'TABULA','NL',163,'pitchedRoof','Roof1_0,36',62,'thickness','float',0.0,NULL,NULL),
	 (507,'TABULA','NL',164,'pitchedRoof','Roof1_0,64',0,'thickness','float',0.2,NULL,NULL),
	 (508,'TABULA','NL',164,'pitchedRoof','Roof1_0,64',23,'thickness','float',0.053,NULL,NULL),
	 (509,'TABULA','NL',164,'pitchedRoof','Roof1_0,64',62,'thickness','float',0.03,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (510,'TABULA','NL',165,'pitchedRoof','Roof1_0,89',0,'thickness','float',0.2,NULL,NULL),
	 (511,'TABULA','NL',165,'pitchedRoof','Roof1_0,89',23,'thickness','float',0.033,NULL,NULL),
	 (512,'TABULA','NL',165,'pitchedRoof','Roof1_0,89',62,'thickness','float',0.03,NULL,NULL),
	 (513,'TABULA','NL',166,'pitchedRoof','Roof1_1,54',0,'thickness','float',0.2,NULL,NULL),
	 (514,'TABULA','NL',166,'pitchedRoof','Roof1_1,54',23,'thickness','float',0.013,NULL,NULL),
	 (515,'TABULA','NL',166,'pitchedRoof','Roof1_1,54',62,'thickness','float',0.01,NULL,NULL),
	 (516,'TABULA','NL',167,'pitchedRoof','Roof1_2,08',0,'thickness','float',0.2,NULL,NULL),
	 (517,'TABULA','NL',167,'pitchedRoof','Roof1_2,08',23,'thickness','float',0.004,NULL,NULL),
	 (518,'TABULA','NL',167,'pitchedRoof','Roof1_2,08',62,'thickness','float',0.035,NULL,NULL),
	 (519,'TABULA','NL',179,'pitchedRoof','Timber rafters closed',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (520,'TABULA','NL',179,'pitchedRoof','Timber rafters closed',95,'thickness','float',0.1,NULL,NULL),
	 (521,'TABULA','NL',179,'pitchedRoof','Timber rafters closed',82,'thickness','float',0.01,NULL,NULL),
	 (522,'TABULA','NL',180,'pitchedRoof','Timber rafters closed with fibreboard',82,'thickness','float',0.01,NULL,NULL),
	 (523,'TABULA','NL',180,'pitchedRoof','Timber rafters closed with fibreboard',95,'thickness','float',0.1,NULL,NULL),
	 (524,'TABULA','NL',180,'pitchedRoof','Timber rafters closed with fibreboard',92,'thickness','float',0.025,NULL,NULL),
	 (525,'TABULA','NL',181,'pitchedRoof','Timber rafters insul-10cm',82,'thickness','float',0.01,NULL,NULL),
	 (526,'TABULA','NL',181,'pitchedRoof','Timber rafters insul-10cm',96,'thickness','float',0.1,NULL,NULL),
	 (527,'TABULA','NL',181,'pitchedRoof','Timber rafters insul-10cm',41,'thickness','float',0.013,NULL,NULL),
	 (528,'TABULA','NL',182,'pitchedRoof','Timber rafters insul-12cm',82,'thickness','float',0.01,NULL,NULL),
	 (529,'TABULA','NL',182,'pitchedRoof','Timber rafters insul-12cm',96,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (530,'TABULA','NL',182,'pitchedRoof','Timber rafters insul-12cm',41,'thickness','float',0.013,NULL,NULL),
	 (531,'TABULA','NL',183,'pitchedRoof','Timber rafters insul-14cm',82,'thickness','float',0.01,NULL,NULL),
	 (532,'TABULA','NL',183,'pitchedRoof','Timber rafters insul-14cm',96,'thickness','float',0.14,NULL,NULL),
	 (533,'TABULA','NL',183,'pitchedRoof','Timber rafters insul-14cm',41,'thickness','float',0.013,NULL,NULL),
	 (534,'TABULA','NL',184,'pitchedRoof','Timber rafters insul-16cm',82,'thickness','float',0.01,NULL,NULL),
	 (535,'TABULA','NL',184,'pitchedRoof','Timber rafters insul-16cm',96,'thickness','float',0.16,NULL,NULL),
	 (536,'TABULA','NL',184,'pitchedRoof','Timber rafters insul-16cm',41,'thickness','float',0.013,NULL,NULL),
	 (537,'TABULA','NL',185,'pitchedRoof','Timber rafters insul-18cm',82,'thickness','float',0.01,NULL,NULL),
	 (538,'TABULA','NL',185,'pitchedRoof','Timber rafters insul-18cm',96,'thickness','float',0.18,NULL,NULL),
	 (539,'TABULA','NL',185,'pitchedRoof','Timber rafters insul-18cm',41,'thickness','float',0.013,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (540,'TABULA','NL',186,'pitchedRoof','Timber rafters insul-18cm_EnEV2016',82,'thickness','float',0.01,NULL,NULL),
	 (541,'TABULA','NL',186,'pitchedRoof','Timber rafters insul-18cm_EnEV2016',96,'thickness','float',0.18,NULL,NULL),
	 (542,'TABULA','NL',186,'pitchedRoof','Timber rafters insul-18cm_EnEV2016',30,'thickness','float',0.01,NULL,NULL),
	 (543,'TABULA','NL',186,'pitchedRoof','Timber rafters insul-18cm_EnEV2016',41,'thickness','float',0.013,NULL,NULL),
	 (544,'TABULA','NL',187,'pitchedRoof','Timber rafters insul-20cm',82,'thickness','float',0.01,NULL,NULL),
	 (545,'TABULA','NL',187,'pitchedRoof','Timber rafters insul-20cm',96,'thickness','float',0.2,NULL,NULL),
	 (546,'TABULA','NL',187,'pitchedRoof','Timber rafters insul-20cm',41,'thickness','float',0.013,NULL,NULL),
	 (547,'TABULA','NL',188,'pitchedRoof','Timber rafters insul-24cm',82,'thickness','float',0.01,NULL,NULL),
	 (548,'TABULA','NL',188,'pitchedRoof','Timber rafters insul-24cm',96,'thickness','float',0.24,NULL,NULL),
	 (549,'TABULA','NL',188,'pitchedRoof','Timber rafters insul-24cm',41,'thickness','float',0.013,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (550,'TABULA','NL',189,'pitchedRoof','Timber rafters insul-28cm',82,'thickness','float',0.01,NULL,NULL),
	 (551,'TABULA','NL',189,'pitchedRoof','Timber rafters insul-28cm',96,'thickness','float',0.28,NULL,NULL),
	 (552,'TABULA','NL',189,'pitchedRoof','Timber rafters insul-28cm',41,'thickness','float',0.013,NULL,NULL),
	 (553,'TABULA','NL',190,'pitchedRoof','Timber rafters insul-34cm',82,'thickness','float',0.01,NULL,NULL),
	 (554,'TABULA','NL',190,'pitchedRoof','Timber rafters insul-34cm',96,'thickness','float',0.34,NULL,NULL),
	 (555,'TABULA','NL',190,'pitchedRoof','Timber rafters insul-34cm',41,'thickness','float',0.013,NULL,NULL),
	 (556,'TABULA','NL',191,'pitchedRoof','Timber rafters insul-42cm',82,'thickness','float',0.01,NULL,NULL),
	 (557,'TABULA','NL',191,'pitchedRoof','Timber rafters insul-42cm',96,'thickness','float',0.42,NULL,NULL),
	 (558,'TABULA','NL',191,'pitchedRoof','Timber rafters insul-42cm',41,'thickness','float',0.013,NULL,NULL),
	 (559,'TABULA','NL',192,'pitchedRoof','Timber rafters insul-4cm',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (560,'TABULA','NL',192,'pitchedRoof','Timber rafters insul-4cm',96,'thickness','float',0.04,NULL,NULL),
	 (561,'TABULA','NL',192,'pitchedRoof','Timber rafters insul-4cm',41,'thickness','float',0.013,NULL,NULL),
	 (562,'TABULA','NL',193,'pitchedRoof','Timber rafters insul-5cm',82,'thickness','float',0.01,NULL,NULL),
	 (563,'TABULA','NL',193,'pitchedRoof','Timber rafters insul-5cm',96,'thickness','float',0.05,NULL,NULL),
	 (564,'TABULA','NL',193,'pitchedRoof','Timber rafters insul-5cm',41,'thickness','float',0.013,NULL,NULL),
	 (565,'TABULA','NL',194,'pitchedRoof','Timber rafters insul-6cm',82,'thickness','float',0.01,NULL,NULL),
	 (566,'TABULA','NL',194,'pitchedRoof','Timber rafters insul-6cm',96,'thickness','float',0.06,NULL,NULL),
	 (567,'TABULA','NL',194,'pitchedRoof','Timber rafters insul-6cm',41,'thickness','float',0.013,NULL,NULL),
	 (568,'TABULA','NL',195,'pitchedRoof','Timber rafters with pumicestone',82,'thickness','float',0.01,NULL,NULL),
	 (569,'TABULA','NL',195,'pitchedRoof','Timber rafters with pumicestone',53,'thickness','float',0.3,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (570,'TABULA','NL',195,'pitchedRoof','Timber rafters with pumicestone',82,'thickness','float',0.01,NULL,NULL),
	 (571,'TABULA','NL',196,'pitchedRoof','Timber rafters_EnEV2016',82,'thickness','float',0.01,NULL,NULL),
	 (572,'TABULA','NL',196,'pitchedRoof','Timber rafters_EnEV2016',96,'thickness','float',0.1,NULL,NULL),
	 (573,'TABULA','NL',196,'pitchedRoof','Timber rafters_EnEV2016',30,'thickness','float',0.065,NULL,NULL),
	 (574,'TABULA','NL',196,'pitchedRoof','Timber rafters_EnEV2016',41,'thickness','float',0.013,NULL,NULL),
	 (575,'TABULA','NL',197,'pitchedRoof','Timber rafters_RefAdv',82,'thickness','float',0.01,NULL,NULL),
	 (576,'TABULA','NL',197,'pitchedRoof','Timber rafters_RefAdv',21,'thickness','float',0.18,NULL,NULL),
	 (577,'TABULA','NL',197,'pitchedRoof','Timber rafters_RefAdv',96,'thickness','float',0.12,NULL,NULL),
	 (578,'TABULA','NL',197,'pitchedRoof','Timber rafters_RefAdv',41,'thickness','float',0.013,NULL,NULL),
	 (579,'TABULA','NL',198,'pitchedRoof','Timber rafters_RefMed',82,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (580,'TABULA','NL',198,'pitchedRoof','Timber rafters_RefMed',96,'thickness','float',0.12,NULL,NULL),
	 (581,'TABULA','NL',198,'pitchedRoof','Timber rafters_RefMed',41,'thickness','float',0.013,NULL,NULL),
	 (582,'TABULA','NL',13,'topCeiling','Breeze block ceiling',76,'thickness','float',0.01,NULL,NULL),
	 (583,'TABULA','NL',13,'topCeiling','Breeze block ceiling',6,'thickness','float',0.13,NULL,NULL),
	 (584,'TABULA','NL',14,'topCeiling','Breeze block ceiling insul-15cm',76,'thickness','float',0.03,NULL,NULL),
	 (585,'TABULA','NL',14,'topCeiling','Breeze block ceiling insul-15cm',30,'thickness','float',0.15,NULL,NULL),
	 (586,'TABULA','NL',14,'topCeiling','Breeze block ceiling insul-15cm',6,'thickness','float',0.15,NULL,NULL),
	 (587,'TABULA','NL',15,'topCeiling','Breeze block ceiling insul-18cm',76,'thickness','float',0.03,NULL,NULL),
	 (588,'TABULA','NL',15,'topCeiling','Breeze block ceiling insul-18cm',30,'thickness','float',0.18,NULL,NULL),
	 (589,'TABULA','NL',15,'topCeiling','Breeze block ceiling insul-18cm',6,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (590,'TABULA','NL',16,'topCeiling','Breeze block ceiling insul-22cm',76,'thickness','float',0.03,NULL,NULL),
	 (591,'TABULA','NL',16,'topCeiling','Breeze block ceiling insul-22cm',30,'thickness','float',0.22,NULL,NULL),
	 (592,'TABULA','NL',16,'topCeiling','Breeze block ceiling insul-22cm',6,'thickness','float',0.15,NULL,NULL),
	 (593,'TABULA','NL',17,'topCeiling','Breeze block ceiling insul-2cm',76,'thickness','float',0.03,NULL,NULL),
	 (594,'TABULA','NL',17,'topCeiling','Breeze block ceiling insul-2cm',29,'thickness','float',0.02,NULL,NULL),
	 (595,'TABULA','NL',17,'topCeiling','Breeze block ceiling insul-2cm',6,'thickness','float',0.15,NULL,NULL),
	 (596,'TABULA','NL',18,'topCeiling','Breeze block ceiling insul-2cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (597,'TABULA','NL',18,'topCeiling','Breeze block ceiling insul-2cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (598,'TABULA','NL',18,'topCeiling','Breeze block ceiling insul-2cm_RefAdv',76,'thickness','float',0.03,NULL,NULL),
	 (599,'TABULA','NL',18,'topCeiling','Breeze block ceiling insul-2cm_RefAdv',29,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (600,'TABULA','NL',18,'topCeiling','Breeze block ceiling insul-2cm_RefAdv',6,'thickness','float',0.15,NULL,NULL),
	 (601,'TABULA','NL',19,'topCeiling','Breeze block ceiling insul-2cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (602,'TABULA','NL',19,'topCeiling','Breeze block ceiling insul-2cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (603,'TABULA','NL',19,'topCeiling','Breeze block ceiling insul-2cm_RefMed',76,'thickness','float',0.03,NULL,NULL),
	 (604,'TABULA','NL',19,'topCeiling','Breeze block ceiling insul-2cm_RefMed',29,'thickness','float',0.02,NULL,NULL),
	 (605,'TABULA','NL',19,'topCeiling','Breeze block ceiling insul-2cm_RefMed',6,'thickness','float',0.15,NULL,NULL),
	 (606,'TABULA','NL',20,'topCeiling','Breeze block ceiling insul-30cm',76,'thickness','float',0.03,NULL,NULL),
	 (607,'TABULA','NL',20,'topCeiling','Breeze block ceiling insul-30cm',30,'thickness','float',0.3,NULL,NULL),
	 (608,'TABULA','NL',20,'topCeiling','Breeze block ceiling insul-30cm',6,'thickness','float',0.15,NULL,NULL),
	 (609,'TABULA','NL',21,'topCeiling','Breeze block ceiling_EnEV2016',76,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (610,'TABULA','NL',21,'topCeiling','Breeze block ceiling_EnEV2016',30,'thickness','float',0.13,NULL,NULL),
	 (611,'TABULA','NL',21,'topCeiling','Breeze block ceiling_EnEV2016',6,'thickness','float',0.13,NULL,NULL),
	 (612,'TABULA','NL',22,'topCeiling','Breeze block ceiling_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (613,'TABULA','NL',22,'topCeiling','Breeze block ceiling_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (614,'TABULA','NL',22,'topCeiling','Breeze block ceiling_RefAdv',76,'thickness','float',0.01,NULL,NULL),
	 (615,'TABULA','NL',22,'topCeiling','Breeze block ceiling_RefAdv',6,'thickness','float',0.13,NULL,NULL),
	 (616,'TABULA','NL',23,'topCeiling','Breeze block ceiling_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (617,'TABULA','NL',23,'topCeiling','Breeze block ceiling_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (618,'TABULA','NL',23,'topCeiling','Breeze block ceiling_RefMed',76,'thickness','float',0.01,NULL,NULL),
	 (619,'TABULA','NL',23,'topCeiling','Breeze block ceiling_RefMed',6,'thickness','float',0.13,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (620,'TABULA','NL',32,'topCeiling','Concrete ceiling foam insul-6cm',76,'thickness','float',0.03,NULL,NULL),
	 (621,'TABULA','NL',32,'topCeiling','Concrete ceiling foam insul-6cm',26,'thickness','float',0.06,NULL,NULL),
	 (622,'TABULA','NL',32,'topCeiling','Concrete ceiling foam insul-6cm',14,'thickness','float',0.15,NULL,NULL),
	 (623,'TABULA','NL',33,'topCeiling','Concrete ceiling foam insul-6cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (624,'TABULA','NL',33,'topCeiling','Concrete ceiling foam insul-6cm_EnEV2016',30,'thickness','float',0.09,NULL,NULL),
	 (625,'TABULA','NL',33,'topCeiling','Concrete ceiling foam insul-6cm_EnEV2016',26,'thickness','float',0.06,NULL,NULL),
	 (626,'TABULA','NL',33,'topCeiling','Concrete ceiling foam insul-6cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (627,'TABULA','NL',34,'topCeiling','Concrete ceiling foam insul-6cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (628,'TABULA','NL',34,'topCeiling','Concrete ceiling foam insul-6cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (629,'TABULA','NL',34,'topCeiling','Concrete ceiling foam insul-6cm_RefAdv',76,'thickness','float',0.03,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (630,'TABULA','NL',34,'topCeiling','Concrete ceiling foam insul-6cm_RefAdv',26,'thickness','float',0.06,NULL,NULL),
	 (631,'TABULA','NL',34,'topCeiling','Concrete ceiling foam insul-6cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (632,'TABULA','NL',35,'topCeiling','Concrete ceiling foam insul-6cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (633,'TABULA','NL',35,'topCeiling','Concrete ceiling foam insul-6cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (634,'TABULA','NL',35,'topCeiling','Concrete ceiling foam insul-6cm_RefMed',76,'thickness','float',0.03,NULL,NULL),
	 (635,'TABULA','NL',35,'topCeiling','Concrete ceiling foam insul-6cm_RefMed',26,'thickness','float',0.06,NULL,NULL),
	 (636,'TABULA','NL',35,'topCeiling','Concrete ceiling foam insul-6cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (637,'TABULA','NL',36,'topCeiling','Concrete ceiling insul-10cm',76,'thickness','float',0.02,NULL,NULL),
	 (638,'TABULA','NL',36,'topCeiling','Concrete ceiling insul-10cm',29,'thickness','float',0.1,NULL,NULL),
	 (639,'TABULA','NL',36,'topCeiling','Concrete ceiling insul-10cm',14,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (640,'TABULA','NL',37,'topCeiling','Concrete ceiling insul-10cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (641,'TABULA','NL',37,'topCeiling','Concrete ceiling insul-10cm_EnEV2016',30,'thickness','float',0.045,NULL,NULL),
	 (642,'TABULA','NL',37,'topCeiling','Concrete ceiling insul-10cm_EnEV2016',29,'thickness','float',0.1,NULL,NULL),
	 (643,'TABULA','NL',37,'topCeiling','Concrete ceiling insul-10cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (644,'TABULA','NL',38,'topCeiling','Concrete ceiling insul-10cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (645,'TABULA','NL',38,'topCeiling','Concrete ceiling insul-10cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (646,'TABULA','NL',38,'topCeiling','Concrete ceiling insul-10cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (647,'TABULA','NL',38,'topCeiling','Concrete ceiling insul-10cm_RefAdv',29,'thickness','float',0.1,NULL,NULL),
	 (648,'TABULA','NL',38,'topCeiling','Concrete ceiling insul-10cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (649,'TABULA','NL',39,'topCeiling','Concrete ceiling insul-10cm_RefMed',76,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (650,'TABULA','NL',39,'topCeiling','Concrete ceiling insul-10cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (651,'TABULA','NL',39,'topCeiling','Concrete ceiling insul-10cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (652,'TABULA','NL',39,'topCeiling','Concrete ceiling insul-10cm_RefMed',29,'thickness','float',0.1,NULL,NULL),
	 (653,'TABULA','NL',39,'topCeiling','Concrete ceiling insul-10cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (654,'TABULA','NL',40,'topCeiling','Concrete ceiling insul-12cm',76,'thickness','float',0.02,NULL,NULL),
	 (655,'TABULA','NL',40,'topCeiling','Concrete ceiling insul-12cm',29,'thickness','float',0.12,NULL,NULL),
	 (656,'TABULA','NL',40,'topCeiling','Concrete ceiling insul-12cm',14,'thickness','float',0.15,NULL,NULL),
	 (657,'TABULA','NL',41,'topCeiling','Concrete ceiling insul-12cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (658,'TABULA','NL',41,'topCeiling','Concrete ceiling insul-12cm_EnEV2016',30,'thickness','float',0.03,NULL,NULL),
	 (659,'TABULA','NL',41,'topCeiling','Concrete ceiling insul-12cm_EnEV2016',29,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (660,'TABULA','NL',41,'topCeiling','Concrete ceiling insul-12cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (661,'TABULA','NL',42,'topCeiling','Concrete ceiling insul-12cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (662,'TABULA','NL',42,'topCeiling','Concrete ceiling insul-12cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (663,'TABULA','NL',42,'topCeiling','Concrete ceiling insul-12cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (664,'TABULA','NL',42,'topCeiling','Concrete ceiling insul-12cm_RefAdv',29,'thickness','float',0.12,NULL,NULL),
	 (665,'TABULA','NL',42,'topCeiling','Concrete ceiling insul-12cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (666,'TABULA','NL',43,'topCeiling','Concrete ceiling insul-12cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (667,'TABULA','NL',43,'topCeiling','Concrete ceiling insul-12cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (668,'TABULA','NL',43,'topCeiling','Concrete ceiling insul-12cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (669,'TABULA','NL',43,'topCeiling','Concrete ceiling insul-12cm_RefMed',29,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (670,'TABULA','NL',43,'topCeiling','Concrete ceiling insul-12cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (671,'TABULA','NL',44,'topCeiling','Concrete ceiling insul-14cm',76,'thickness','float',0.02,NULL,NULL),
	 (672,'TABULA','NL',44,'topCeiling','Concrete ceiling insul-14cm',29,'thickness','float',0.14,NULL,NULL),
	 (673,'TABULA','NL',44,'topCeiling','Concrete ceiling insul-14cm',14,'thickness','float',0.15,NULL,NULL),
	 (674,'TABULA','NL',45,'topCeiling','Concrete ceiling insul-14cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (675,'TABULA','NL',45,'topCeiling','Concrete ceiling insul-14cm_EnEV2016',30,'thickness','float',0.015,NULL,NULL),
	 (676,'TABULA','NL',45,'topCeiling','Concrete ceiling insul-14cm_EnEV2016',29,'thickness','float',0.14,NULL,NULL),
	 (677,'TABULA','NL',45,'topCeiling','Concrete ceiling insul-14cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (678,'TABULA','NL',46,'topCeiling','Concrete ceiling insul-14cm_EnEv2014',76,'thickness','float',0.02,NULL,NULL),
	 (679,'TABULA','NL',46,'topCeiling','Concrete ceiling insul-14cm_EnEv2014',29,'thickness','float',0.13,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (680,'TABULA','NL',46,'topCeiling','Concrete ceiling insul-14cm_EnEv2014',14,'thickness','float',0.15,NULL,NULL),
	 (681,'TABULA','NL',47,'topCeiling','Concrete ceiling insul-14cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (682,'TABULA','NL',47,'topCeiling','Concrete ceiling insul-14cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (683,'TABULA','NL',47,'topCeiling','Concrete ceiling insul-14cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (684,'TABULA','NL',47,'topCeiling','Concrete ceiling insul-14cm_RefAdv',29,'thickness','float',0.14,NULL,NULL),
	 (685,'TABULA','NL',47,'topCeiling','Concrete ceiling insul-14cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (686,'TABULA','NL',48,'topCeiling','Concrete ceiling insul-16cm',76,'thickness','float',0.02,NULL,NULL),
	 (687,'TABULA','NL',48,'topCeiling','Concrete ceiling insul-16cm',29,'thickness','float',0.16,NULL,NULL),
	 (688,'TABULA','NL',48,'topCeiling','Concrete ceiling insul-16cm',14,'thickness','float',0.15,NULL,NULL),
	 (689,'TABULA','NL',49,'topCeiling','Concrete ceiling insul-16cmEPS035',76,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (690,'TABULA','NL',49,'topCeiling','Concrete ceiling insul-16cmEPS035',30,'thickness','float',0.16,NULL,NULL),
	 (691,'TABULA','NL',49,'topCeiling','Concrete ceiling insul-16cmEPS035',14,'thickness','float',0.15,NULL,NULL),
	 (692,'TABULA','NL',50,'topCeiling','Concrete ceiling insul-16cmEPS040',76,'thickness','float',0.02,NULL,NULL),
	 (693,'TABULA','NL',50,'topCeiling','Concrete ceiling insul-16cmEPS040',29,'thickness','float',0.16,NULL,NULL),
	 (694,'TABULA','NL',50,'topCeiling','Concrete ceiling insul-16cmEPS040',14,'thickness','float',0.15,NULL,NULL),
	 (695,'TABULA','NL',51,'topCeiling','Concrete ceiling insul-16cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (696,'TABULA','NL',51,'topCeiling','Concrete ceiling insul-16cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (697,'TABULA','NL',51,'topCeiling','Concrete ceiling insul-16cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (698,'TABULA','NL',51,'topCeiling','Concrete ceiling insul-16cm_RefAdv',29,'thickness','float',0.16,NULL,NULL),
	 (699,'TABULA','NL',51,'topCeiling','Concrete ceiling insul-16cm_RefAdv',14,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (700,'TABULA','NL',52,'topCeiling','Concrete ceiling insul-20cm',76,'thickness','float',0.02,NULL,NULL),
	 (701,'TABULA','NL',52,'topCeiling','Concrete ceiling insul-20cm',30,'thickness','float',0.2,NULL,NULL),
	 (702,'TABULA','NL',52,'topCeiling','Concrete ceiling insul-20cm',14,'thickness','float',0.15,NULL,NULL),
	 (703,'TABULA','NL',53,'topCeiling','Concrete ceiling insul-24cm',76,'thickness','float',0.02,NULL,NULL),
	 (704,'TABULA','NL',53,'topCeiling','Concrete ceiling insul-24cm',30,'thickness','float',0.24,NULL,NULL),
	 (705,'TABULA','NL',53,'topCeiling','Concrete ceiling insul-24cm',14,'thickness','float',0.15,NULL,NULL),
	 (706,'TABULA','NL',54,'topCeiling','Concrete ceiling insul-2cm',76,'thickness','float',0.02,NULL,NULL),
	 (707,'TABULA','NL',54,'topCeiling','Concrete ceiling insul-2cm',29,'thickness','float',0.02,NULL,NULL),
	 (708,'TABULA','NL',54,'topCeiling','Concrete ceiling insul-2cm',14,'thickness','float',0.15,NULL,NULL),
	 (709,'TABULA','NL',55,'topCeiling','Concrete ceiling insul-2cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (710,'TABULA','NL',55,'topCeiling','Concrete ceiling insul-2cm_EnEV2016',30,'thickness','float',0.12,NULL,NULL),
	 (711,'TABULA','NL',55,'topCeiling','Concrete ceiling insul-2cm_EnEV2016',29,'thickness','float',0.02,NULL,NULL),
	 (712,'TABULA','NL',55,'topCeiling','Concrete ceiling insul-2cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (713,'TABULA','NL',56,'topCeiling','Concrete ceiling insul-2cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (714,'TABULA','NL',56,'topCeiling','Concrete ceiling insul-2cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (715,'TABULA','NL',56,'topCeiling','Concrete ceiling insul-2cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (716,'TABULA','NL',56,'topCeiling','Concrete ceiling insul-2cm_RefAdv',29,'thickness','float',0.02,NULL,NULL),
	 (717,'TABULA','NL',56,'topCeiling','Concrete ceiling insul-2cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (718,'TABULA','NL',57,'topCeiling','Concrete ceiling insul-2cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (719,'TABULA','NL',57,'topCeiling','Concrete ceiling insul-2cm_RefMed',30,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (720,'TABULA','NL',57,'topCeiling','Concrete ceiling insul-2cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (721,'TABULA','NL',57,'topCeiling','Concrete ceiling insul-2cm_RefMed',29,'thickness','float',0.02,NULL,NULL),
	 (722,'TABULA','NL',57,'topCeiling','Concrete ceiling insul-2cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (723,'TABULA','NL',58,'topCeiling','Concrete ceiling insul-30cm',76,'thickness','float',0.02,NULL,NULL),
	 (724,'TABULA','NL',58,'topCeiling','Concrete ceiling insul-30cm',30,'thickness','float',0.3,NULL,NULL),
	 (725,'TABULA','NL',58,'topCeiling','Concrete ceiling insul-30cm',14,'thickness','float',0.15,NULL,NULL),
	 (726,'TABULA','NL',59,'topCeiling','Concrete ceiling insul-4cm',76,'thickness','float',0.02,NULL,NULL),
	 (727,'TABULA','NL',59,'topCeiling','Concrete ceiling insul-4cm',29,'thickness','float',0.04,NULL,NULL),
	 (728,'TABULA','NL',59,'topCeiling','Concrete ceiling insul-4cm',14,'thickness','float',0.15,NULL,NULL),
	 (729,'TABULA','NL',60,'topCeiling','Concrete ceiling insul-4cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (730,'TABULA','NL',60,'topCeiling','Concrete ceiling insul-4cm_EnEV2016',30,'thickness','float',0.1,NULL,NULL),
	 (731,'TABULA','NL',60,'topCeiling','Concrete ceiling insul-4cm_EnEV2016',29,'thickness','float',0.04,NULL,NULL),
	 (732,'TABULA','NL',60,'topCeiling','Concrete ceiling insul-4cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (733,'TABULA','NL',61,'topCeiling','Concrete ceiling insul-4cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (734,'TABULA','NL',61,'topCeiling','Concrete ceiling insul-4cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (735,'TABULA','NL',61,'topCeiling','Concrete ceiling insul-4cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (736,'TABULA','NL',61,'topCeiling','Concrete ceiling insul-4cm_RefAdv',29,'thickness','float',0.04,NULL,NULL),
	 (737,'TABULA','NL',61,'topCeiling','Concrete ceiling insul-4cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (738,'TABULA','NL',62,'topCeiling','Concrete ceiling insul-4cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (739,'TABULA','NL',62,'topCeiling','Concrete ceiling insul-4cm_RefMed',30,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (740,'TABULA','NL',62,'topCeiling','Concrete ceiling insul-4cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (741,'TABULA','NL',62,'topCeiling','Concrete ceiling insul-4cm_RefMed',29,'thickness','float',0.04,NULL,NULL),
	 (742,'TABULA','NL',62,'topCeiling','Concrete ceiling insul-4cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (743,'TABULA','NL',63,'topCeiling','Concrete ceiling insul-5cm',76,'thickness','float',0.02,NULL,NULL),
	 (744,'TABULA','NL',63,'topCeiling','Concrete ceiling insul-5cm',29,'thickness','float',0.05,NULL,NULL),
	 (745,'TABULA','NL',63,'topCeiling','Concrete ceiling insul-5cm',14,'thickness','float',0.15,NULL,NULL),
	 (746,'TABULA','NL',64,'topCeiling','Concrete ceiling insul-5cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (747,'TABULA','NL',64,'topCeiling','Concrete ceiling insul-5cm_EnEV2016',30,'thickness','float',0.09,NULL,NULL),
	 (748,'TABULA','NL',64,'topCeiling','Concrete ceiling insul-5cm_EnEV2016',29,'thickness','float',0.05,NULL,NULL),
	 (749,'TABULA','NL',64,'topCeiling','Concrete ceiling insul-5cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (750,'TABULA','NL',65,'topCeiling','Concrete ceiling insul-5cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (751,'TABULA','NL',65,'topCeiling','Concrete ceiling insul-5cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (752,'TABULA','NL',65,'topCeiling','Concrete ceiling insul-5cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (753,'TABULA','NL',65,'topCeiling','Concrete ceiling insul-5cm_RefAdv',29,'thickness','float',0.05,NULL,NULL),
	 (754,'TABULA','NL',65,'topCeiling','Concrete ceiling insul-5cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (755,'TABULA','NL',66,'topCeiling','Concrete ceiling insul-5cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (756,'TABULA','NL',66,'topCeiling','Concrete ceiling insul-5cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (757,'TABULA','NL',66,'topCeiling','Concrete ceiling insul-5cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (758,'TABULA','NL',66,'topCeiling','Concrete ceiling insul-5cm_RefMed',29,'thickness','float',0.05,NULL,NULL),
	 (759,'TABULA','NL',66,'topCeiling','Concrete ceiling insul-5cm_RefMed',14,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (760,'TABULA','NL',67,'topCeiling','Concrete ceiling insul-8cm',76,'thickness','float',0.02,NULL,NULL),
	 (761,'TABULA','NL',67,'topCeiling','Concrete ceiling insul-8cm',29,'thickness','float',0.08,NULL,NULL),
	 (762,'TABULA','NL',67,'topCeiling','Concrete ceiling insul-8cm',14,'thickness','float',0.15,NULL,NULL),
	 (763,'TABULA','NL',68,'topCeiling','Concrete ceiling insul-8cm_EnEV2016',76,'thickness','float',0.02,NULL,NULL),
	 (764,'TABULA','NL',68,'topCeiling','Concrete ceiling insul-8cm_EnEV2016',30,'thickness','float',0.065,NULL,NULL),
	 (765,'TABULA','NL',68,'topCeiling','Concrete ceiling insul-8cm_EnEV2016',29,'thickness','float',0.08,NULL,NULL),
	 (766,'TABULA','NL',68,'topCeiling','Concrete ceiling insul-8cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (767,'TABULA','NL',69,'topCeiling','Concrete ceiling insul-8cm_RefAdv',76,'thickness','float',0.02,NULL,NULL),
	 (768,'TABULA','NL',69,'topCeiling','Concrete ceiling insul-8cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (769,'TABULA','NL',69,'topCeiling','Concrete ceiling insul-8cm_RefAdv',76,'thickness','float',0.02,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (770,'TABULA','NL',69,'topCeiling','Concrete ceiling insul-8cm_RefAdv',29,'thickness','float',0.08,NULL,NULL),
	 (771,'TABULA','NL',69,'topCeiling','Concrete ceiling insul-8cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (772,'TABULA','NL',70,'topCeiling','Concrete ceiling insul-8cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (773,'TABULA','NL',70,'topCeiling','Concrete ceiling insul-8cm_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (774,'TABULA','NL',70,'topCeiling','Concrete ceiling insul-8cm_RefMed',76,'thickness','float',0.02,NULL,NULL),
	 (775,'TABULA','NL',70,'topCeiling','Concrete ceiling insul-8cm_RefMed',29,'thickness','float',0.08,NULL,NULL),
	 (776,'TABULA','NL',70,'topCeiling','Concrete ceiling insul-8cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (777,'TABULA','NL',71,'topCeiling','Concrete ceiling with gravel insul-8cm',51,'thickness','float',0.1,NULL,NULL),
	 (778,'TABULA','NL',71,'topCeiling','Concrete ceiling with gravel insul-8cm',29,'thickness','float',0.08,NULL,NULL),
	 (779,'TABULA','NL',71,'topCeiling','Concrete ceiling with gravel insul-8cm',14,'thickness','float',0.15,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (780,'TABULA','NL',72,'topCeiling','Concrete ceiling with gravel insul-8cm_EnEV2016',51,'thickness','float',0.1,NULL,NULL),
	 (781,'TABULA','NL',72,'topCeiling','Concrete ceiling with gravel insul-8cm_EnEV2016',30,'thickness','float',0.06,NULL,NULL),
	 (782,'TABULA','NL',72,'topCeiling','Concrete ceiling with gravel insul-8cm_EnEV2016',29,'thickness','float',0.08,NULL,NULL),
	 (783,'TABULA','NL',72,'topCeiling','Concrete ceiling with gravel insul-8cm_EnEV2016',14,'thickness','float',0.15,NULL,NULL),
	 (784,'TABULA','NL',73,'topCeiling','Concrete ceiling with gravel insul-8cm_RefAdv',51,'thickness','float',0.1,NULL,NULL),
	 (785,'TABULA','NL',73,'topCeiling','Concrete ceiling with gravel insul-8cm_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (786,'TABULA','NL',73,'topCeiling','Concrete ceiling with gravel insul-8cm_RefAdv',29,'thickness','float',0.08,NULL,NULL),
	 (787,'TABULA','NL',73,'topCeiling','Concrete ceiling with gravel insul-8cm_RefAdv',14,'thickness','float',0.15,NULL,NULL),
	 (788,'TABULA','NL',74,'topCeiling','Concrete ceiling with gravel insul-8cm_RefMed',51,'thickness','float',0.1,NULL,NULL),
	 (789,'TABULA','NL',74,'topCeiling','Concrete ceiling with gravel insul-8cm_RefMed',30,'thickness','float',0.12,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (790,'TABULA','NL',74,'topCeiling','Concrete ceiling with gravel insul-8cm_RefMed',29,'thickness','float',0.08,NULL,NULL),
	 (791,'TABULA','NL',74,'topCeiling','Concrete ceiling with gravel insul-8cm_RefMed',14,'thickness','float',0.15,NULL,NULL),
	 (792,'TABULA','NL',168,'topCeiling','Roof2_0,16',0,'thickness','float',0.2,NULL,NULL),
	 (793,'TABULA','NL',168,'topCeiling','Roof2_0,16',23,'thickness','float',0.264,NULL,NULL),
	 (794,'TABULA','NL',168,'topCeiling','Roof2_0,16',62,'thickness','float',0.0,NULL,NULL),
	 (795,'TABULA','NL',169,'topCeiling','Roof2_0,23',0,'thickness','float',0.2,NULL,NULL),
	 (796,'TABULA','NL',169,'topCeiling','Roof2_0,23',23,'thickness','float',0.178,NULL,NULL),
	 (797,'TABULA','NL',169,'topCeiling','Roof2_0,23',62,'thickness','float',0.0,NULL,NULL),
	 (798,'TABULA','NL',170,'topCeiling','Roof2_0,36',0,'thickness','float',0.2,NULL,NULL),
	 (799,'TABULA','NL',170,'topCeiling','Roof2_0,36',23,'thickness','float',0.108,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (800,'TABULA','NL',170,'topCeiling','Roof2_0,36',62,'thickness','float',0.0,NULL,NULL),
	 (801,'TABULA','NL',171,'topCeiling','Roof2_0,64',0,'thickness','float',0.2,NULL,NULL),
	 (802,'TABULA','NL',171,'topCeiling','Roof2_0,64',23,'thickness','float',0.053,NULL,NULL),
	 (803,'TABULA','NL',171,'topCeiling','Roof2_0,64',62,'thickness','float',0.03,NULL,NULL),
	 (804,'TABULA','NL',172,'topCeiling','Roof2_0,89',0,'thickness','float',0.2,NULL,NULL),
	 (805,'TABULA','NL',172,'topCeiling','Roof2_0,89',23,'thickness','float',0.033,NULL,NULL),
	 (806,'TABULA','NL',172,'topCeiling','Roof2_0,89',62,'thickness','float',0.03,NULL,NULL),
	 (807,'TABULA','NL',173,'topCeiling','Roof2_1,54',0,'thickness','float',0.2,NULL,NULL),
	 (808,'TABULA','NL',173,'topCeiling','Roof2_1,54',23,'thickness','float',0.013,NULL,NULL),
	 (809,'TABULA','NL',173,'topCeiling','Roof2_1,54',62,'thickness','float',0.01,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (810,'TABULA','NL',174,'topCeiling','Roof2_2,08',0,'thickness','float',0.2,NULL,NULL),
	 (811,'TABULA','NL',174,'topCeiling','Roof2_2,08',23,'thickness','float',0.004,NULL,NULL),
	 (812,'TABULA','NL',174,'topCeiling','Roof2_2,08',62,'thickness','float',0.035,NULL,NULL),
	 (813,'TABULA','NL',206,'topCeiling','Wood ceiling infill cob',89,'thickness','float',0.02,NULL,NULL),
	 (814,'TABULA','NL',206,'topCeiling','Wood ceiling infill cob',93,'thickness','float',0.25,NULL,NULL),
	 (815,'TABULA','NL',206,'topCeiling','Wood ceiling infill cob',82,'thickness','float',0.01,NULL,NULL),
	 (816,'TABULA','NL',207,'topCeiling','Wood ceiling infill cob and dead floor',82,'thickness','float',0.02,NULL,NULL),
	 (817,'TABULA','NL',207,'topCeiling','Wood ceiling infill cob and dead floor',93,'thickness','float',0.25,NULL,NULL),
	 (818,'TABULA','NL',207,'topCeiling','Wood ceiling infill cob and dead floor',82,'thickness','float',0.01,NULL,NULL),
	 (819,'TABULA','NL',207,'topCeiling','Wood ceiling infill cob and dead floor',94,'thickness','float',0.1,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (820,'TABULA','NL',207,'topCeiling','Wood ceiling infill cob and dead floor',82,'thickness','float',0.01,NULL,NULL),
	 (821,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',30,'thickness','float',0.1,NULL,NULL),
	 (822,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',82,'thickness','float',0.02,NULL,NULL),
	 (823,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',93,'thickness','float',0.25,NULL,NULL),
	 (824,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',82,'thickness','float',0.01,NULL,NULL),
	 (825,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',94,'thickness','float',0.1,NULL,NULL),
	 (826,'TABULA','NL',208,'topCeiling','Wood ceiling infill cob and dead floor_EnEV2016',82,'thickness','float',0.01,NULL,NULL),
	 (827,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (828,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',82,'thickness','float',0.02,NULL,NULL),
	 (829,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',93,'thickness','float',0.25,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (830,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',82,'thickness','float',0.01,NULL,NULL),
	 (831,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',94,'thickness','float',0.1,NULL,NULL),
	 (832,'TABULA','NL',209,'topCeiling','Wood ceiling infill cob and dead floor_RefAdv',82,'thickness','float',0.01,NULL,NULL),
	 (833,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (834,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',82,'thickness','float',0.02,NULL,NULL),
	 (835,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',93,'thickness','float',0.25,NULL,NULL),
	 (836,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',82,'thickness','float',0.01,NULL,NULL),
	 (837,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',94,'thickness','float',0.1,NULL,NULL),
	 (838,'TABULA','NL',210,'topCeiling','Wood ceiling infill cob and dead floor_RefMed',82,'thickness','float',0.01,NULL,NULL),
	 (839,'TABULA','NL',211,'topCeiling','Wood ceiling infill cob_EnEV2016',30,'thickness','float',0.115,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (840,'TABULA','NL',211,'topCeiling','Wood ceiling infill cob_EnEV2016',89,'thickness','float',0.02,NULL,NULL),
	 (841,'TABULA','NL',211,'topCeiling','Wood ceiling infill cob_EnEV2016',93,'thickness','float',0.25,NULL,NULL),
	 (842,'TABULA','NL',211,'topCeiling','Wood ceiling infill cob_EnEV2016',82,'thickness','float',0.01,NULL,NULL),
	 (843,'TABULA','NL',212,'topCeiling','Wood ceiling infill cob_RefAdv',30,'thickness','float',0.3,NULL,NULL),
	 (844,'TABULA','NL',212,'topCeiling','Wood ceiling infill cob_RefAdv',89,'thickness','float',0.02,NULL,NULL),
	 (845,'TABULA','NL',212,'topCeiling','Wood ceiling infill cob_RefAdv',93,'thickness','float',0.25,NULL,NULL),
	 (846,'TABULA','NL',212,'topCeiling','Wood ceiling infill cob_RefAdv',82,'thickness','float',0.01,NULL,NULL),
	 (847,'TABULA','NL',213,'topCeiling','Wood ceiling infill cob_RefMed',30,'thickness','float',0.12,NULL,NULL),
	 (848,'TABULA','NL',213,'topCeiling','Wood ceiling infill cob_RefMed',89,'thickness','float',0.02,NULL,NULL),
	 (849,'TABULA','NL',213,'topCeiling','Wood ceiling infill cob_RefMed',93,'thickness','float',0.25,NULL,NULL);
INSERT INTO physics.composite (id,"system",country,construction_id,construction_category,construction_name,material_id,"attribute",data_type,value,uom,description) VALUES
	 (850,'TABULA','NL',213,'topCeiling','Wood ceiling infill cob_RefMed',82,'thickness','float',0.01,NULL,NULL),
	 (851,'TABULA','NL',12,'sharedWall','Beton shared wall',6,'thickness','float',0.15,NULL,NULL),
	 (852,'TABULA','NL',11,'internalWall','Beton internal wall',6,'thickness','float',0.06,NULL,NULL),
	 (853,'TABULA','NL',10,'intermediaryFloor','Beton intermediary floor',6,'thickness','float',0.2,NULL,NULL);

INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (0,'TABULA','NL','Brick',0,'Solid brick',2000.0,840.0,0.96,0.8,0.25,0.11,0.02,'solid brick made of clay, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (1,'TABULA','NL','Brick',1,'Cored brick',1500.0,920.0,0.71,NULL,NULL,NULL,NULL,NULL,NULL),
	 (2,'TABULA','NL','Brick',2,'Honeycomb brick',1120.0,790.0,0.3,0.77,0.14,0.11,0.02,'light clay brick, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (3,'TABULA','NL','Brick',3,'Inner leaf brick',1800.0,840.0,0.62,1.1,0.95,0.11,0.02,'made of portland clinker, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (4,'TABULA','NL','Brick',4,'Outer leaf brick',2000.0,650.0,0.96,1.1,0.95,0.11,0.02,'made of portland clinker, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (5,'TABULA','NL','Brick',5,'Vermiculite insulated brick',700.0,840.0,0.27,NULL,NULL,NULL,NULL,NULL,NULL),
	 (6,'TABULA','NL','Concrete',6,'Breeze block',1500.0,650.0,0.44,0.3,0.12,0.08,0.01,'concrete block, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (7,'TABULA','NL','Concrete',7,'Concrete dense',2000.0,1014.0,1.13,0.3,0.16,0.08,0.01,'concrete 50MPa, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (8,'TABULA','NL','Concrete',8,'Concrete lightweight',1200.0,1014.0,0.38,NULL,NULL,NULL,NULL,NULL,NULL),
	 (9,'TABULA','NL','Concrete',9,'Aerated concrete block',500.0,840.0,0.16,1.01,0.48,0.08,0.01,'autoclaved aerated concrete, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km');
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (10,'TABULA','NL','Concrete',10,'Foamed slag concrete',1040.0,960.0,0.25,NULL,NULL,NULL,NULL,NULL,NULL),
	 (11,'TABULA','NL','Concrete',11,'Vermiculite aggregate concrete',450.0,833.0,0.17,NULL,NULL,NULL,NULL,NULL,NULL),
	 (12,'TABULA','NL','Concrete',12,'No fines concrete',1800.0,840.0,0.96,NULL,NULL,NULL,NULL,NULL,NULL),
	 (13,'TABULA','NL','Concrete',13,'Glass reinforced concrete',1950.0,840.0,0.9,NULL,NULL,NULL,NULL,NULL,NULL),
	 (14,'TABULA','NL','Concrete',14,'Reinforced concrete',2240.0,900.0,1.95,0.46,0.18,0.08,0.01,'concrete 25 MPa, steel low alloyed, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (15,'TABULA','NL','Ground covering',15,'Infusorial (9% mc)',480.0,180.0,0.09,NULL,NULL,NULL,NULL,NULL,NULL),
	 (16,'TABULA','NL','Ground covering',16,'Gravel based',2050.0,184.0,0.52,NULL,NULL,NULL,NULL,NULL,NULL),
	 (17,'TABULA','NL','Ground covering',17,'Common earth',1460.0,879.0,1.28,NULL,NULL,NULL,NULL,NULL,NULL),
	 (18,'TABULA','NL','Insulation',18,'Asbestos insulation',577.0,833.0,0.16,NULL,NULL,NULL,NULL,NULL,NULL),
	 (19,'TABULA','NL','Insulation',19,'Cork insulation',105.0,1810.0,0.045,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (20,'TABULA','NL','Insulation',20,'Woodwool',500.0,1014.0,0.1,NULL,NULL,NULL,NULL,NULL,NULL),
	 (21,'TABULA','NL','Insulation',21,'Glasswool',250.0,840.0,0.04,2.98,0.54,0.08,0.01,'glaswool mat for insulation, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (22,'TABULA','NL','Insulation',22,'Sheeps wool',198.0,1360.0,0.06,NULL,NULL,NULL,NULL,NULL,NULL),
	 (23,'TABULA','NL','Insulation',23,'Mineral fibre',105.0,1800.0,0.045,NULL,NULL,NULL,NULL,NULL,NULL),
	 (24,'TABULA','NL','Insulation',24,'Urea formaldehyde foam (UFFI)',30.0,1764.0,0.03,NULL,NULL,NULL,NULL,NULL,NULL),
	 (25,'TABULA','NL','Insulation',25,'Polyurethane (PUR)',30.0,837.0,0.025,NULL,NULL,NULL,NULL,NULL,NULL),
	 (26,'TABULA','NL','Insulation',26,'Foamed glass',125.0,833.0,0.05,9.04,2.04,0.08,0.01,'foamed glass, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (27,'TABULA','NL','Insulation',27,'Cellulose (loose fill)',300.0,1000.0,0.037,2.98,0.54,0.08,0.01,'cellulose loose fill including blow in, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (28,'TABULA','NL','Insulation',28,'Extruded polystyrene (XPS 030)',32.0,1412.0,0.03,NULL,NULL,NULL,NULL,NULL,NULL),
	 (29,'TABULA','NL','Insulation',29,'Expanded polystyrene (EPS 040)',25.0,1014.0,0.04,27.2,3.83,0.11,0.13,'polystyrene, CO2 blown, produced in Germany, transportation 50 km','100% sent to sanitary landfill, transportation 50 km');
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (30,'TABULA','NL','Insulation',30,'Expanded polystyrene (EPS 035)',25.0,1014.0,0.035,27.2,3.83,0.11,0.13,'polystyrene, CO2 blown, produced in Germany, transportation 50 km','100% sent to sanitary landfill, transportation 50 km'),
	 (31,'TABULA','NL','Insulation',31,'Expanded PVC',55.0,1014.0,0.04,NULL,NULL,NULL,NULL,NULL,NULL),
	 (32,'TABULA','NL','Insulation',32,'Silicon',700.0,1004.0,0.18,NULL,NULL,NULL,NULL,NULL,NULL),
	 (33,'TABULA','NL','Insulation',33,'Wool felt underlay',160.0,1360.0,0.04,NULL,NULL,NULL,NULL,NULL,NULL),
	 (34,'TABULA','NL','Insulation',34,'Cellular rubber underlay',400.0,1360.0,0.1,NULL,NULL,NULL,NULL,NULL,NULL),
	 (35,'TABULA','NL','Insulation',35,'Synthetic carpet',160.0,2500.0,0.06,NULL,NULL,NULL,NULL,NULL,NULL),
	 (36,'TABULA','NL','Metal',36,'Copper',8900.0,434.0,200.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (37,'TABULA','NL','Metal',37,'Steel',7800.0,507.0,50.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (38,'TABULA','NL','Metal',38,'Aluminium',2800.0,905.0,160.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (39,'TABULA','NL','Plaster',39,'Dense plaster',1300.0,1000.0,0.5,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (40,'TABULA','NL','Plaster',40,'Light plaster',600.0,1000.0,0.16,NULL,NULL,NULL,NULL,NULL,NULL),
	 (41,'TABULA','NL','Plaster',41,'Gypsum plasterboard',950.0,833.0,0.16,1.61,0.43,0.11,0.02,'produced from 100% natural gypsum, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (42,'TABULA','NL','Plaster',42,'Perlite plasterboard',800.0,833.0,0.18,NULL,NULL,NULL,NULL,NULL,NULL),
	 (43,'TABULA','NL','Plaster',43,'Gypsum plastering',1200.0,833.0,0.42,0.3,0.07,0.08,0.01,'gypsum plastering made of gypsum, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (44,'TABULA','NL','Plaster',44,'Perlite plastering',400.0,833.0,0.08,NULL,NULL,NULL,NULL,NULL,NULL),
	 (45,'TABULA','NL','Plaster',45,'Vermiculite plastering',720.0,833.0,0.2,NULL,NULL,NULL,NULL,NULL,NULL),
	 (46,'TABULA','NL','Stone',46,'Sandstone',2000.0,724.0,1.3,0.45,0.17,0.11,0.02,'sand-lime brick, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (47,'TABULA','NL','Stone',47,'Granite',2600.0,905.0,2.5,NULL,NULL,NULL,NULL,NULL,NULL),
	 (48,'TABULA','NL','Stone',48,'Marble',2500.0,796.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (49,'TABULA','NL','Stone',49,'Limestone',2180.0,724.0,1.5,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (50,'TABULA','NL','Stone',50,'Slate',2700.0,760.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (51,'TABULA','NL','Stone',51,'Gravel',1840.0,833.0,0.36,0.08,0.02,0.08,0.01,'gravel, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (52,'TABULA','NL','Stone',52,'Chippings',1800.0,1000.0,0.96,NULL,NULL,NULL,NULL,NULL,NULL),
	 (53,'TABULA','NL','Stone',53,'Pumice stone',1280.0,840.0,0.53,0.44,0.24,0.11,0.02,'light weight concrete block - pumice, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (54,'TABULA','NL','Stone',54,'Sand',1500.0,830.0,0.2,0.05,0.01,0.08,0.01,'sand, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (55,'TABULA','NL','Stone',55,'Cinder aggregate',1000.0,800.0,0.4,0.04,0.01,0.07,0.01,'ground granulated plast furnace slag, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (56,'TABULA','NL','Tile',56,'Concrete lightweight screed',1200.0,833.0,0.41,NULL,NULL,NULL,NULL,NULL,NULL),
	 (57,'TABULA','NL','Tile',57,'Concrete screed',2100.0,1014.0,1.28,NULL,NULL,NULL,NULL,NULL,NULL),
	 (58,'TABULA','NL','Tile',58,'Granolithic screed',2085.0,833.0,0.87,NULL,NULL,NULL,NULL,NULL,NULL),
	 (59,'TABULA','NL','Tile',59,'Cement screed',2100.0,650.0,1.4,0.36,0.2,0.12,0.02,'cement is portland cement, strength class Z 42.5, produced in Germany, transportation 50 km','100% sent to material landfill, transportation 50 km');
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (60,'TABULA','NL','Tile',60,'Rendering dry',1300.0,1014.0,0.5,NULL,NULL,NULL,NULL,NULL,NULL),
	 (61,'TABULA','NL','Tile',61,'Rendering (1% mc)',1431.0,1014.0,1.13,0.21,0.06,0.1,0.02,'clay plaster (sand: 0.55kg, clay: 0.25kg, water: 0.2kg), produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (62,'TABULA','NL','Tile',62,'Rendering (8% mc)',1329.0,1014.0,0.79,0.21,0.06,0.1,0.02,'clay plaster (sand: 0.55kg, clay: 0.25kg, water: 0.2kg), produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (63,'TABULA','NL','Tile',63,'Aged rendering',1329.0,1000.0,0.79,0.21,0.06,0.1,0.02,'clay plaster (sand: 0.55kg, clay: 0.25kg, water: 0.2kg), produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (64,'TABULA','NL','Tile',64,'Clay tile',1900.0,837.0,0.85,NULL,NULL,NULL,NULL,NULL,NULL),
	 (65,'TABULA','NL','Tile',65,'Concrete tile',2100.0,837.0,1.1,NULL,NULL,NULL,NULL,NULL,NULL),
	 (66,'TABULA','NL','Tile',66,'Slate tile',2700.0,760.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL),
	 (67,'TABULA','NL','Tile',67,'Plastic tile',1050.0,837.0,0.5,NULL,NULL,NULL,NULL,NULL,NULL),
	 (68,'TABULA','NL','Tile',68,'Rubber tile',1600.0,2000.0,0.3,NULL,NULL,NULL,NULL,NULL,NULL),
	 (69,'TABULA','NL','Tile',69,'Cork tile',530.0,1800.0,0.08,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (70,'TABULA','NL','Tile',70,'Asphalt/asbestos roof',1900.0,833.0,0.55,NULL,NULL,NULL,NULL,NULL,NULL),
	 (71,'TABULA','NL','Tile',71,'P.V.C./asbestos roof',2000.0,833.0,0.85,NULL,NULL,NULL,NULL,NULL,NULL),
	 (72,'TABULA','NL','Tile',72,'Straw thatch',240.0,180.0,0.07,NULL,NULL,NULL,NULL,NULL,NULL),
	 (73,'TABULA','NL','Tile',73,'Ceiling (mineral)',290.0,2000.0,0.03,NULL,NULL,NULL,NULL,NULL,NULL),
	 (74,'TABULA','NL','Tile',74,'Ceiling (plaster)',1120.0,840.0,0.38,NULL,NULL,NULL,NULL,NULL,NULL),
	 (75,'TABULA','NL','Tile',75,'Bitumen felt',1700.0,1000.0,0.5,NULL,NULL,NULL,NULL,NULL,NULL),
	 (76,'TABULA','NL','Tile',76,'Roofing felt',960.0,837.0,0.19,12.41,0.85,0.12,0.11,'plastic liner consisting of polymer EP4 flame retardant and bitumen seal, produced in Germany, transportation 50 km','100% sent to sanitary landfill, transportation 50 km'),
	 (77,'TABULA','NL','Tile',77,'Asphalt mastic roofing',2325.0,837.0,1.15,NULL,NULL,NULL,NULL,NULL,NULL),
	 (78,'TABULA','NL','Tile',78,'Asphalt',1907.0,833.0,0.62,NULL,NULL,NULL,NULL,NULL,NULL),
	 (79,'TABULA','NL','Tile',79,'Asbestos cement',1500.0,1000.0,0.36,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (80,'TABULA','NL','Tile',80,'Cement sheet',700.0,1050.0,0.36,NULL,NULL,NULL,NULL,NULL,NULL),
	 (81,'TABULA','NL','Wood',81,'Wood block',800.0,2093.0,0.16,NULL,NULL,NULL,NULL,NULL,NULL),
	 (82,'TABULA','NL','Wood',82,'Hardboard medium',600.0,2027.0,0.08,13.13,1.3,0.12,0.08,'fibreboard hard, produced in Germany, transportation 50 km','100% sent to sanitary landfill, transportation 50 km'),
	 (83,'TABULA','NL','Wood',83,'Hardboard standard',900.0,2027.0,0.13,NULL,NULL,NULL,NULL,NULL,NULL),
	 (84,'TABULA','NL','Wood',84,'Timber flooring',650.0,1195.0,0.14,NULL,NULL,NULL,NULL,NULL,NULL),
	 (85,'TABULA','NL','Wood',85,'Corkboard',160.0,1888.0,0.04,NULL,NULL,NULL,NULL,NULL,NULL),
	 (86,'TABULA','NL','Wood',86,'Chipboard',800.0,2093.0,0.15,NULL,NULL,NULL,NULL,NULL,NULL),
	 (87,'TABULA','NL','Wood',87,'Softboard',350.0,1000.0,0.56,NULL,NULL,NULL,NULL,NULL,NULL),
	 (88,'TABULA','NL','Wood',88,'Weatherboard',650.0,2000.0,0.14,NULL,NULL,NULL,NULL,NULL,NULL),
	 (89,'TABULA','NL','Wood',89,'Hardwood (oak, mapple, walnut...)',700.0,1412.0,0.15,1.59,0.03,0.11,0.08,'sawing of hardwood, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km');
INSERT INTO physics.layer (id,"system",country,material_category,material_id,material_name,density,heat_capacity,conductivity,embodied_energy,embodied_carbon,disposal_energy,disposal_carbon,construction_description,disposal_description) VALUES
	 (90,'TABULA','NL','Wood',90,'Softwood (pine, spruce...)',630.0,2760.0,0.13,NULL,NULL,NULL,NULL,NULL,NULL),
	 (91,'TABULA','NL','Wood',91,'Plywood',560.0,2500.0,0.15,NULL,NULL,NULL,NULL,NULL,NULL),
	 (92,'TABULA','NL','Wood',92,'Fibreboard',300.0,1000.0,0.06,5.23,1.2,0.11,0.08,'fibreboard soft without adhesives, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (93,'TABULA','NL','Others',93,'Loam',1280.0,1000.0,0.55,0.06,0.01,0.08,0.01,'market for clay, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km'),
	 (94,'TABULA','NL','Others',94,'Air layer (horizontal 10cm)',1.2,1400.0,0.45,NULL,NULL,NULL,NULL,'air layer inbetween different construction types','no disposal for air layer'),
	 (95,'TABULA','NL','Others',95,'Air layer (vertical 10cm)',1.2,1400.0,0.55,NULL,NULL,NULL,NULL,'air layer inbetween different construction types','no disposal for air layer'),
	 (96,'TABULA','NL','Others',96,'Rafters with glasswool insulation',288.0,1032.0,0.05,15.18,0.71,0.11,0.06,'ratio 80/20 Vol.-% (glasswool/rafters), glued laminated timber used as rafters, produced in Germany, transportation 50 km','100% sent to landfill, transportation 50 km');

INSERT INTO physics.profile ("system",country,profile_id,profile_type,"element","function",data_type,length,value,description) VALUES
	 ('TABULA','NL',1,'occupancy','day','residential building','array',24,'{1.0,1.0,1.0,1.0,1.0,1.0,0.8,0.6,0.4,0.4,0.4,0.6,0.8,0.6,0.4,0.4,0.6,0.8,0.8,0.8,0.8,1.0,1.0,1.0}','occupancy day profile of residential buildings'),
	 ('TABULA','NL',1,'occupancy','year','residential building','array',365,'{1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0}','occupancy year profile of residential buildings'),
	 ('TABULA','NL',2,'occupancy','day','commercial building','array',24,'{0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.2,0.4,0.4,0.4,0.6,0.6,0.6,0.4,0.4,0.6,0.8,0.6,0.0,0.0,0.0,0.0,0.0}','occupancy day profile of commercial buildings'),
	 ('TABULA','NL',2,'occupancy','year','commercial building','array',365,'{2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0,2.0,2.0,2.0,2.0,2.0,0.0,2.0}','occupancy year profile of commercial buildings');

INSERT INTO physics."window" (id,"system",country,window_id,window_name,u_value,g_value,glazing_number,frame_ratio,description) VALUES
	 (0,'TABULA','NL',0,'Window_1,8',1.8,0.6,2.0,0.3,NULL),
	 (1,'TABULA','NL',1,'Window_2,2',2.2,0.6,2.0,0.3,NULL),
	 (2,'TABULA','NL',2,'Window_2,9',2.9,0.6,2.0,0.3,NULL),
	 (3,'TABULA','NL',3,'Window_3,1',3.1,0.6,2.0,0.3,NULL),
	 (4,'TABULA','NL',4,'Window_3,3',3.3,0.6,2.0,0.3,NULL),
	 (5,'TABULA','NL',5,'Window_3,5',3.5,0.6,2.0,0.3,NULL),
	 (6,'TABULA','NL',6,'Window_3,6',3.6,0.6,2.0,0.3,NULL),
	 (7,'TABULA','NL',7,'Window_3,7',3.7,0.6,2.0,0.3,NULL);

INSERT INTO physics.heat_cool_source (id,country,category,beginday,endday,"name",pmax,eta_th,eta_tech,ttarget,tsource,description) VALUES
	 (0,'NL','HeatSource',258,135,'spaceX',10000000,0.95,NULL,NULL,NULL,NULL),
	 (1,'NL','CoolSource',136,257,NULL,10000000,NULL,0.3,5.0,'air',NULL);

INSERT INTO physics.heat_cool_tank (id,country,category,v,phi,rho,cp,tmin,tmax,description) VALUES
	 (0,'NL','HeatTank',0.01,20.0,1000.0,4180.0,20.0,35.0,NULL),
	 (1,'NL','CoolTank',0.01,20.0,1000.0,4180.0,5.0,20.0,NULL);

INSERT INTO physics.terrain_physics (id,composite_id,"name",category,short_wave_reflectance,k_factor,detailed_simulation,thickness,conductivity,cp,density) VALUES
	 (0,999,'Clay soil','groundSurface',0.3,0.7,'TRUE',3.82,0.25,890.0,1600.0);

INSERT INTO physics.tree_physics (id,category,leaf_area_index,leaf_width,leaf_distance,deciduous,short_wave_reflectance,long_wave_emissivity) VALUES
	 (0,'Maple',3.0,0.1,1.0,'FALSE',0.3,0.95);
