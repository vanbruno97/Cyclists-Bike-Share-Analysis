-- ==========================================================
-- Project : Cyclistic Bike Share Analysis
-- Author  : Ludwig Van Bruno Bagnolok
-- Tool    : Google BigQuery
--
-- File    : 05_business_questions.sql
--
-- Purpose :
-- Answer the three business questions defined in the
-- Google Data Analytics Case Study.
-- ==========================================================

-- ==========================================================
-- BUSINESS QUESTION 1
--
-- How do annual members and casual riders use Cyclistic
-- bikes differently?
-- ==========================================================

-- 1. User Distribution

SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY member_casual;


-- 2. Average time

SELECT
    member_casual,

    ROUND(
        AVG(ride_length_minutes),
        2
    ) AS average_ride_duration

FROM `project-6577c817-95ba-41b4-a38.trip_data.all_trips_2025_features`

GROUP BY member_casual;


-- 3.  Activity by day/month/hour

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


-- 4. Bike type preference

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


-- FINDINGS

--  Annual members account for most rides.
--
--  Casual riders take longer trips.
--
--  Members mainly ride during weekdays.
--
--  Casual riders are more active on weekends
--   and in the afternoon.
--
--  Both groups prefer electric bikes.


-- ==========================================================
-- BUSINESS QUESTION 2
--
-- Why would casual riders buy annual memberships?
-- ==========================================================

-- Findings
--
-- Casual riders frequently use the service
-- during weekends and for longer trips.
--
-- A membership offering benefits for frequent
-- leisure riders could encourage conversion.


-- ==========================================================
-- BUSINESS QUESTION 3
--
-- How can Cyclistic use digital media to convert
-- casual riders into annual members?
-- ==========================================================

-- Findings
--
-- Marketing campaigns could target:
--
-- Weekend riders
--
-- Summer users
--
-- Afternoon riders
--
-- through digital advertising,
-- email campaigns and mobile notifications.

-- ==========================================================
-- FINAL CONCLUSION
-- ==========================================================
--
-- SQL analysis successfully identified behavioral
-- differences between annual members and casual riders.
--
-- These findings were used to design the Tableau dashboard
-- and formulate business recommendations.
--
-- ==========================================================
