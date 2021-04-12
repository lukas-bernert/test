SELECT avg(fill_level) AS avg_fill_level, time_bucket('10m', time) as minute, sensor_id
FROM fill_measurements
WHERE time >= '01/10/2021' AND
time < '01/11/2021
GROUP BY minute, sensor_id
