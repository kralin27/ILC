-- ------------------------------------------------
-- make sure tblWeatherReading is empty
-- ------------------------------------------------
TRUNCATE TABLE tblWeatherReading;

LOAD DATA INFILE 'C:/ILC/DatabaseFinal/RawData/campbels_mod.csv'
INTO TABLE tblWeatherReading
FIELDS 
	TERMINATED BY ','
	ENCLOSED BY '"'
	ESCAPED BY '\\'
IGNORE 1 ROWS;	