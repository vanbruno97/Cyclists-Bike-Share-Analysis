--number of lines
SELECT
COUNT (*) AS Number_of_lines
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01` 


  
--type of bikes
SELECT 
rideable_type,
COUNT(*) AS number_of_rides
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
GROUP BY rideable_type
ORDER BY nb_rides DESC;




--number of cyclists
SELECT
member_casual,
COUNT(*) AS cyclists
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01` 
GROUP BY member_casual;




--visualization of all the null values
SELECT
COUNTIF(start_station_name IS NULL) AS start_station_name_null,

COUNTIF(end_station_name IS NULL) AS end_station_name_null,

COUNTIF(start_station_id IS NULL) AS start_station_id_null,

COUNTIF(end_station_id IS NULL) AS end_station_id_null

FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`;


--final visualization of all the null values
SELECT
    COUNT(*) AS total_rows,

    COUNTIF(ride_id IS NULL) AS ride_id_null,

    COUNTIF(rideable_type IS NULL) AS rideable_type_null,

    COUNTIF(started_at IS NULL) AS started_at_null,

    COUNTIF(ended_at IS NULL) AS ended_at_null,

    COUNTIF(start_station_name IS NULL) AS start_station_name_null,

    COUNTIF(start_station_id IS NULL) AS start_station_id_null,

    COUNTIF(end_station_name IS NULL) AS end_station_name_null,

    COUNTIF(end_station_id IS NULL) AS end_station_id_null,

    COUNTIF(start_lat IS NULL) AS start_lat_null,

    COUNTIF(start_lng IS NULL) AS start_lng_null,

    COUNTIF(end_lat IS NULL) AS end_lat_null,

    COUNTIF(end_lng IS NULL) AS end_lng_null,

    COUNTIF(member_casual IS NULL) AS member_casual_null

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`;



--visualization of all the duplicates
SELECT
ride_id,
COUNT(*) AS occurences
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
GROUP BY ride_id
HAVING COUNT(*)>1;


