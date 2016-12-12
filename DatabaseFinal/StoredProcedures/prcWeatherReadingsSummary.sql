/*


USE WeatherDB;
CALL prcWeatherReadingsSummary();

*/

DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReadingsSummary;

CREATE PROCEDURE prcWeatherReadingsSummary ()

BEGIN
	DECLARE ReadingFirst DATETIME; 
	DECLARE ReadingLast DATETIME; 
	DECLARE ReadingsCount int;
    DECLARE MissingReadingCount int; 
    
    SELECT min(timestamp) into ReadingFirst
	FROM tblWeatherReading;

    SELECT max(timestamp) into ReadingLast
	FROM tblWeatherReading;
    
	SELECT count(*) into ReadingsCount
	FROM tblWeatherReading;  
    
    SELECT count(*) into MissingReadingCount
    FROM tblWeatherReadingMissing; 
    
    SELECT ReadingsCount,ReadingFirst,ReadingLast, MissingReadingCount;
END//