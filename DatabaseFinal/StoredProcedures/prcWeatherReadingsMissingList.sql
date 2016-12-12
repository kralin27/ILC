/*
CALL prcWeatherReadingsMissingList();

*/

DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReadingsMissingList;

CREATE PROCEDURE prcWeatherReadingsMissingList()

BEGIN

SELECT DATE(timestamp) AS Date,COUNT(*) as Count
		FROM tblWeatherReadingMissing
		GROUP BY DATE(timestamp)
		ORDER BY DATE(timestamp);
END//