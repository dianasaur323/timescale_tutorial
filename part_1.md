# Part 1: Getting started with TimescaleDB
## Install TimescaleDB

For general install instructions, follow the steps outlined [here](https://docs.timescale.com/v0.12/getting-started/installation/).

For Amazon AMI, follow the steps outlined [here](https://github.com/timescale/docs.timescale.com-content/pull/34/commits/f4859666f4ec820b50490f7a1626c00074633662).

## Setup TimescaleDB

Run through the setup instructions [here](https://docs.timescale.com/v0.12/getting-started/setup).

Connect to your database and run `\dx` to confirm that TimescaleDB was properly installed as an extension.

## Load the sample dataset

We will be using the taxi trip record data set provided by NYC Gov, available [here](http://www.nyc.gov/html/tlc/html/about/trip_record_data.shtml).

The data has been formatted for your easy consumption in the git repository, so you can choose to download the relevant files there.

Use the SQL instructions provided in [part_1.sql](https://github.com/dianasaur323/timescale_tutorial/blob/master/part_1.sql) to load the CSV file.

## Configure PostgreSQL

Go to the [PgTune](https://pgtune.leopard.in.ua/#/) website and get the suggested configs for your machine using the Data Warehouse DB Type.

Update the configurations in your postgres.conf file. The default location is usually /usr/local/var/postgres/postgresql.conf.

## Manually set chunk_size

SELECT * FROM chunk_relation_size_pretty('taxi_data');
SELECT set_chunk_time_interval('taxi_data', interval '24 hours');
