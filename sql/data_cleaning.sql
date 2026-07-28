--Checking Routes with Negative Duration
SELECT
*
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
WHERE ended_at < started_at;



--Check for empty ride_ids
SELECT 
*
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
WHERE ride_id IS NULL;



--Check for unknown members
SELECT DISTINCT member_casual
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
