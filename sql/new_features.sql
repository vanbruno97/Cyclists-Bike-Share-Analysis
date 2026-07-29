--Travel time
TIMESTAMP_DIFF(
ended_at,
started_at,
MINUTE
)


--weekday
FORMAT_DATE(
'%A',
DATE(started_at)
)

--Month
FORMAT_DATE(
'%B',
DATE(started_at)
)

--Hour
EXTRACT(HOUR FROM started_at)
