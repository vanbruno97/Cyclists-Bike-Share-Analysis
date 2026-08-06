-- ==========================================================
-- Project : Cyclistic Bike Share Analysis
-- Author  : Ludwig Van Bruno Bagnolok
-- Tool    : Google BigQuery
--
-- File    : 03_feature_engineering.sql
--
-- Purpose :
-- Create new variables to facilitate behavioral analysis of Cyclistic riders.
-- ==========================================================


-- Create feature engineering table
-- Caculate the ride duration, the day of the week, the month and the hour

CREATE OR REPLACE TABLE
`project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

AS
  
SELECT
    *,
    TIMESTAMP_DIFF(
        ended_at,
        started_at,
        MINUTE
    ) AS ride_length_minutes,
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
    EXTRACT(MONTH FROM started_at) AS month,
    EXTRACT(HOUR FROM started_at) AS hour,
  
    CASE
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=1 THEN 'Sunday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=2 THEN 'Monday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=3 THEN 'Tuesday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=4 THEN 'Wednesday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=5 THEN 'Thursday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=6 THEN 'Friday'
        WHEN EXTRACT(DAYOFWEEK FROM started_at)=7 THEN 'Saturday'

    END AS day_name

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025`;

-- Verification

SELECT 
  *
FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`
LIMIT 5;

-- ==========================================================
-- FEATURES CREATED
-- ==========================================================
--
-- ride_length_minutes : Trip duration in minutes

-- day_of_week : Numeric weekday (1=Sunday ... 7=Saturday)

-- day_name : Weekday label

-- month : Ride month (1-12)

-- hour : Ride start hour (0-23)

-- These features are used to compare riding behavior between annual members and casual riders.
--
-- ==========================================================
