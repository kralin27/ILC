/*


USE WeatherDB;
CALL prcWeatherReadingsMeasure('rain',10);
CALL prcWeatherReadingsMeasure('wind',10);
CALL prcWeatherReadingsMeasure('temp_min',10);
CALL prcWeatherReadingsMeasure('temp_max',10);

*/
DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReadingsMeasure;

CREATE PROCEDURE prcWeatherReadingsMeasure
(
IN in_measure VARCHAR(20),
IN in_records INTEGER
)

BEGIN
	CASE in_measure
		WHEN 'rain' THEN
			SELECT * FROM tblWeatherReading ORDER BY rain_mm_total DESC,timestamp LIMIT in_records;
		WHEN 'wind' THEN
			SELECT * FROM tblWeatherReading ORDER BY wind_speed_ms_max DESC,timestamp LIMIT in_records;    
		WHEN 'tempMin' THEN
        	SELECT * FROM tblWeatherReading ORDER BY air_temp_c_min ASC,timestamp LIMIT in_records;    
		WHEN 'tempMax' THEN
			SELECT * FROM tblWeatherReading ORDER BY air_temp_c_max DESC,timestamp LIMIT in_records;               
    END CASE;
END//