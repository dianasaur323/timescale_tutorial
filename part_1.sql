-- Create a table

CREATE TABLE taxi_data(
  VendorID INTEGER,
  tpep_pickup_datetime TIMESTAMP,
  tpep_dropoff_datetime TIMESTAMP,
  passenger_count INTEGER,
  trip_distance FLOAT,
  RatecodeID INTEGER,
  store_and_fwd_flag CHAR,
  PULocationID INTEGER,
  DOLocationID INTEGER,
  payment_type INTEGER,
  fare_amount FLOAT,
  extra FLOAT,
  mta_tax FLOAT,
  tip_amount FLOAT,
  tolls_amount FLOAT,
  improvement_surcharge FLOAT,
  total_amount FLOAT
);

-- Create a hypertable

SELECT create_hypertable('taxi_data', 'tpep_pickup_datetime');

-- Copy January data in, changing the path and file name if necessary.
\copy taxi_data FROM '/Users/dianasaur/Downloads/yellow_tripdata_2018-01.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER);

-- If you get this error (ERROR:  unquoted carriage return found in data), run the following command on your file. It may take several minutes.
vi yellow_tripdata_2018-01.csv
:%s/\r//g
esc :wq
