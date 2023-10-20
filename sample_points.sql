CREATE OR REPLACE TABLE sample_points AS SELECT
column0 as sample_name,
'POINT(' || column2 || ' ' || column1 || ')' as sample_location_text
FROM read_csv_auto('samples.postive.csv');
