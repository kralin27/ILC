USE sys;

-- ------------------------------------------------
-- create the database
-- ------------------------------------------------
SELECT 'Create WeatherDB2' AS '';
DROP DATABASE IF EXISTS WeatherDB2;
CREATE DATABASE WeatherDB2;

-- ------------------------------------------------
-- set WeatherDB as the current database
-- ------------------------------------------------
USE WeatherDB2;

-- ------------------------------------------------
-- create table tblWeatherReading (stores all imported weather readings)
-- ------------------------------------------------
DROP TABLE IF EXISTS tblWeatherReading;
CREATE TABLE tblWeatherReading
(
	id	INT PRIMARY KEY,	
	timestamp	DATETIME,	
	record_num INT,	
	air_temp_c_avg	DECIMAL(9,3),
	air_temp_c_max	DECIMAL(9,3),	
	air_temp_c_min	DECIMAL(9,3),	
	rel_hum_avg	DECIMAL(9,3),	
	rel_hum_max	DECIMAL(9,3),	
	rel_hum_min	DECIMAL(9,3),	
	wind_speed_ms_max	DECIMAL(9,3),	
	wind_speed_avg	DECIMAL(9,3),	
	wind_dir_avg	DECIMAL(9,3),	
	solar_rad_w_avg	DECIMAL(9,3),	
	solar_rad_w_max	DECIMAL(9,3),	
	rain_mm_total	DECIMAL(9,3),	
	dew_point_c_max	DECIMAL(9,3),	
	dew_point_c_min	DECIMAL(9,3),	
	wind_chill_c_max	DECIMAL(9,3),	
	wind_chill_c_min	DECIMAL(9,3),	
	heat_index_c_max	DECIMAL(9,3),	
	heat_index_c_min	DECIMAL(9,3),	
	etrs_mm_total	DECIMAL(9,3),	
	rso	DECIMAL(9,3),	
	created_at	DATETIME,	
	updated_at	DATETIME
);

-- ------------------------------------------------
-- create table tblTimestampRef (stores all possible timestamps - 24 records per day)
-- ------------------------------------------------
DROP TABLE IF EXISTS tblTimestampRef;
CREATE TABLE tblTimestampRef
(
    timestamp    DATETIME    PRIMARY KEY
);

-- ------------------------------------------------
-- create table tblWeatherReadingMissing (stores all missing timestamps - timestamps in tblTimestampRef not in tblWeatherReading)
-- ------------------------------------------------
DROP TABLE IF EXISTS tblWeatherReadingMissing;
CREATE TABLE tblWeatherReadingMissing
(
    timestamp    DATETIME    PRIMARY KEY
);

-- ------------------------------------------------
-- create database user with only rights to execute stored procedures
-- ------------------------------------------------
DROP USER IF EXISTS webUser;

CREATE USER webUser IDENTIFIED BY 'pa$$word';
GRANT EXECUTE ON * TO webUser;

/*
We are not granting SELECT, UPDATE, DELETE, INSERT rights to webUser.
Thus when connecting to the database as webUser all actions on database data can only occur through stored procedures.

When MySQL was installed a root user with global rights was created.
All stored procedures were created logged in as the root user.

The web app stores database connection information (database name, username, password) in ..\TESCWeather\src\main\resources\config.properties 
*/


