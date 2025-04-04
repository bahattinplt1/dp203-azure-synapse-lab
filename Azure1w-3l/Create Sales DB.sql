-- Database for sales data
CREATE DATABASE Sales
  COLLATE Latin1_General_100_BIN2_UTF8;
GO;

USE Sales;
GO;

-- External data is in the Files container in the data lake
CREATE EXTERNAL DATA SOURCE sales_data
WITH (
    LOCATION = 'https://datalakee8cf1z3.dfs.core.windows.net/files/'
);
GO;

-- Format for table files
CREATE EXTERNAL FILE FORMAT ParquetFormat
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
GO;