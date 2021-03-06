--==========================================================================================================================	
-- BUILDING CLASSES
--==========================================================================================================================	
------------------------------	
-- BuildingClasses
------------------------------
INSERT INTO BuildingClasses 	
			(Type,						DefaultBuilding,			NoLimit)
VALUES		('BUILDINGCLASS_DUMMYGPP',	'BUILDING_DUMMYGPP',		1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,					BuildingClass,				Description,					GoldMaintenance,	Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex,	GreatPeopleRateModifier)
VALUES		('BUILDING_DUMMYGPP',	'BUILDINGCLASS_DUMMYGPP',	'TXT_KEY_BUILDING_DUMMYGPP',	0,					-1,		-1,			-1,				1,				1,			0,				-1,					'CIV_COLOR_ATLAS',	0,				5);
--==========================================================================================================================
--==========================================================================================================================
