/*

USE WeatherDB;
CALL prcWeatherReadingsDate('2016-01-01');

*/

DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReadingsDate;

CREATE PROCEDURE prcWeatherReadingsDate
(
IN in_date datetime
)

BEGIN
	
	SELECT * FROM tblWeatherReading WHERE DATE(timestamp)=in_date;

END//