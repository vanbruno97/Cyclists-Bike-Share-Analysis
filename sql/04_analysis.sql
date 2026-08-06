-- ==========================================================
-- Project : Cyclistic Bike Share Analysis
-- Author  : Ludwig Van Bruno Bagnolok
-- Tool    : Google BigQuery
--
-- File    : 04_analysis.sql
--
-- Purpose : Explore riding behavior and compare annual members with casual riders.
-- ==========================================================


-- Dataset Overview

SELECT
    COUNT(*) AS total_rides
FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`;


--  Average Ride Duration

SELECT
    member_casual,
    ROUND(AVG(ride_length_minutes),2) AS average_ride_duration

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY member_casual;


-- Weekly Ride Trends

SELECT

    day_name,

    member_casual,

    COUNT(*) AS total_rides,

    ROUND(
        AVG(ride_length_minutes),
        2
    ) AS avg_ride_length

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY

    day_name,
    day_of_week,
    member_casual

ORDER BY

    day_of_week,
    member_casual;



-- Monthly Ride Trends

SELECT

    month,

    member_casual,

    COUNT(*) AS total_rides,

    ROUND(
        AVG(ride_length_minutes),
        2
    ) AS avg_ride_length

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY

    month,
    member_casual

ORDER BY

    month,
    member_casual;



-- Hourly Ride Trends

SELECT

    hour,

    member_casual,

    COUNT(*) AS total_rides,

    ROUND(
        AVG(ride_length_minutes),
        2
    ) AS avg_ride_length

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY

    hour,
    member_casual

ORDER BY

    hour,
    member_casual;



--  Bike Type Preference

SELECT

    rideable_type,

    member_casual,

    COUNT(*) AS total_rides,

    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(PARTITION BY member_casual),
        2
    ) AS percentage

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY

    rideable_type,
    member_casual;


-- ==========================================================
-- ANALYSIS SUMMARY
-- ==========================================================
--
-- Key Findings:
--
-- • Annual members account for 64.04% of all rides.
--
-- • Casual riders have longer average trips.
--
-- • Members mainly ride during weekdays and commuting hours.
--
-- • Casual riders are more active on weekends and during
--   afternoon hours.
--
-- • Ride activity peaks during summer for both rider groups.
--
-- • Electric bikes are preferred by both rider groups.
--
-- These findings support the business recommendations
-- proposed in the final report.
--
-- ==========================================================
