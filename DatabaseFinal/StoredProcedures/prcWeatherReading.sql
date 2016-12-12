/*


USE WeatherDB;
CALL prcWeatherReading(30);

*/

DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReading;

CREATE PROCEDURE prcWeatherReading
(
IN in_id INTEGER
)

BEGIN
	
	SELECT * FROM tblWeatherReading WHERE Id=in_id;

END//