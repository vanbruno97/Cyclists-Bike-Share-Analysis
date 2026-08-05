-- ==========================================================
-- Project : Cyclistic Bike Share Analysis
-- Author  : Ludwig Van Bruno Bagnolok
-- Tool    : Google BigQuery
--
-- File    : 01_import_and_merge.sql
--
-- Purpose :
-- Merge the 12 monthly Cyclistic datasets into one table
-- for the 2025 analysis.
-- ==========================================================
CREATE OR REPLACE TABLE
`project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`

AS

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_02`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_03`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_04`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_05`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_06`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_07`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_08`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_09`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_10`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_11`

UNION ALL

SELECT *
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_12`;

-- ==========================================================
-- Verify that the merged table contains all records
-- ==========================================================

SELECT
    COUNT(*) AS total_rows
FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`;
