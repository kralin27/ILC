/*
CALL prcWeatherReadingsMissingListDetail('2008-03-20'); 

*/

DELIMITER //

DROP PROCEDURE IF EXISTS prcWeatherReadingsMissingListDetail;

CREATE PROCEDURE prcWeatherReadingsMissingListDetail

(IN in_date datetime)

BEGIN

	SELECT * 
    FROM tblWeatherReadingMissing 
    WHERE DATE(timestamp)=in_date
    ORDER BY timestamp; 

END//