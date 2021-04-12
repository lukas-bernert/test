CREATE MATERIALIZED VIEW avg_fill_levels_10m
WITH (timescaledb.continuous) AS
SELECT avg(fill_level) AS avg_fill_level, time_bucket('10m', time) as minute, sensor_id
FROM fill_measurements
GROUP BY minute, sensor_id
