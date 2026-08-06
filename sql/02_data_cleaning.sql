-- ==========================================================
-- Project : Cyclistic Bike Share Analysis
-- Author  : Ludwig Van Bruno Bagnolok
-- Tool    : Google BigQuery
--
-- File    : 02_data_cleaning.sql
--
-- Purpose :
-- Assess data quality by checking missing values,
-- duplicates and data consistency before analysis.
-- ==========================================================


-- SECTION 1 : Check missing values


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

-- Results:
-- ride_id_null = 0
-- rideable_type_null = 0
-- started_at_null = 0
-- ended_at_null = 0
-- start_station_name_null = 1,184,673
-- start_station_id_null = 1,184,673
-- end_station_name_null = 1,243,305
-- end_station_id_null = 1,243,305
-- end_lat_null = 5,535
-- end_lng_null = 5,535
-- member_casual_null = 0
-- 5,535 rides have missing destination coordinates.


-- SECTION 2 : Check duplicate ride IDs
SELECT
    ride_id,
    COUNT(*) AS occurrences
FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`

GROUP BY ride_id

HAVING COUNT(*) > 1;

-- Result: 0 duplicate ride IDs detected.



-- SECTION 3 : Check negative ride durations

SELECT *

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`

WHERE TIMESTAMP_DIFF(
    ended_at,
    started_at,
    MINUTE
) < 0;
-- Result: No negative ride durations found.

-- DATA CLEANING SUMMARY
--  No missing ride identifiers.
--  No missing timestamps.
--  29 rides have a negative duration and should be investigated before analysis.
--  No Duplicate ride IDs identified.
--  Missing station names are kept because trips remain usable.
--  Missing destination coordinates affect only a very small proportion of the dataset.
-- The dataset is considered suitable for feature engineering and exploratory analysis.

