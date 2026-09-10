CREATE TABLE bronze_yellow_taxi
WITH (
  table_type = 'ICEBERG',
  is_external = false,
  format = 'PARQUET',
  location = 's3://lakehouse-341853291414/warehouse/bronze_yellow_taxi/',
  partitioning = ARRAY['month(tpep_pickup_datetime)']
) AS
SELECT * FROM raw_yellow_taxi;
