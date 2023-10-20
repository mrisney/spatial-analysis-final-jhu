-- Create a table for farms with location as text representations
CREATE OR REPLACE TABLE farms AS SELECT
Name as farm_name,
Address as farm_address,
'POINT(' || longitude || ' ' || latitude || ')' as farm_location_text
FROM read_csv_auto('farms.monterey.csv');
