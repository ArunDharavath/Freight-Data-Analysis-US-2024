CREATE OR REPLACE TABLE zoomcamp_project.freight_data_2024_full AS
SELECT * FROM zoomcamp_project.freight_data_Jan2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_Feb2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_March2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_April2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_May2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_June2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_July2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_August2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_September2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_October2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_November2024
UNION ALL
SELECT * FROM zoomcamp_project.freight_data_December2024;