CREATE OR REPLACE TABLE farm_sample_distances AS SELECT
f.farm_name,
s.sample_name,
ST_Transform(ST_GeomFromText(f.farm_location_text), 'EPSG:4326', 'EPSG:4326') as farm_location,
ST_Transform(ST_GeomFromText(s.sample_location_text), 'EPSG:4326', 'EPSG:4326') as sample_location,
ST_Distance(
ST_Transform(ST_GeomFromText(f.farm_location_text), 'EPSG:4326', 'EPSG:4326'),
ST_Transform(ST_GeomFromText(s.sample_location_text), 'EPSG:4326', 'EPSG:4326')
) * 69 as distance_miles
FROM farms f
CROSS JOIN sample_points s;
