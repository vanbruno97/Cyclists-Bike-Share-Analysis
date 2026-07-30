--Average duration per user
SELECT
member_casual,

ROUND(AVG(
TIMESTAMP_DIFF(
ended_at,
started_at,
MINUTE)
),3) AS avg_time_per_user
FROM `project-6577c817-95ba-41b4-a38.trip_data.tripdata_01`
GROUP BY member_casual;

