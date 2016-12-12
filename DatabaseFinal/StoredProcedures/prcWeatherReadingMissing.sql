/*

CALL prcWeatherReadingMissing ();

*/

DELIMITER //
DROP PROCEDURE IF EXISTS prcWeatherReadingMissing;

CREATE PROCEDURE prcWeatherReadingMissing ()

BEGIN
	
DECLARE timestamp_min date;
DECLARE timestamp_max date; 
DECLARE dateItr date; 
DECLARE dateHourItr date; 
DECLARE hourItr int;

SELECT 
	min(timestamp) into timestamp_min
from tblWeatherReading;

SELECT 
    max(timestamp) into timestamp_max
from tblWeatherReading;

-- remove any/all records from tables to be populated in case this stored procedure is run multiple times
TRUNCATE TABLE tbltimestampref;
TRUNCATE TABLE tblweatherreadingmissing;

-- for testing just pretend span is 10 days
-- SET timestamp_max = DATE_ADD(timestamp_min, INTERVAL 10 DAY);

SET dateItr = timestamp_min; 
WHILE dateItr <= timestamp_max DO
	SET dateHourItr=dateItr;
	SET  hourItr = 0;
  		
	WHILE hourItr<=23 DO
		INSERT INTO tbltimestampref (timestamp) VALUES (DATE_ADD(dateHourItr, INTERVAL hourItr HOUR));
        SET hourItr = hourItr + 1; 
    END WHILE;

	-- move to the next day
    SET dateItr = DATE_ADD(dateItr, INTERVAL 1 DAY);
END WHILE;

/*
SELECT COUNT(*) FROM tbltimestampref;
SELECT * FROM tbltimestampref ORDER BY timestamp LIMIT 1000;
SELECT * FROM tbltimestampref ORDER BY timestamp DESC LIMIT 1000;
*/

-- populate tblweatherreadingmissing with values in tbltimestampref but not in tblweatherreading
INSERT INTO tblweatherreadingmissing (timestamp)
SELECT timestamp 
FROM tbltimestampref
WHERE timestamp NOT IN (SELECT timestamp FROM tblweatherreading);

-- report back to the client
SELECT timestamp_min, timestamp_max; 
SELECT COUNT(*) AS Reccords_in_tblWeatherReading FROM tblweatherreading;
SELECT COUNT(*) AS Reccords_in_tblTimestampRef FROM tbltimestampref;
SELECT COUNT(*) AS Reccords_in_tblWeatherReadingMissing FROM tblweatherreadingmissing;

/*
SELECT DATE(timestamp) AS Date,COUNT(*)
FROM tbltimestampref
WHERE timestamp NOT IN (SELECT timestamp FROM tblweatherreading)
GROUP BY DATE(timestamp)
ORDER BY DATE(timestamp);
*/

/*
SELECT *
FROM tbltimestampref
WHERE timestamp NOT IN (SELECT timestamp FROM tblweatherreading)
ORDER BY timestamp;
*/

END//