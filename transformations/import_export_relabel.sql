SELECT
  CASE 
    WHEN `COUNTRY` = 1220 THEN 'Canada'
    WHEN `COUNTRY` = 2010 THEN 'Mexico'
    ELSE 'Other'
  END AS Country,
  
  CASE 
    WHEN TRDTYPE = 1 THEN 'Import'
    WHEN TRDTYPE = 2 THEN 'Export'
    ELSE 'Other'
  END AS Trade_Type,

  SUM(VALUE) AS Total_Shipment_Value
FROM
  `zoomcamp_project.freight_data_2024`
WHERE
  `Country` IN (1220, 2010)
  AND TRDTYPE IN (1, 2)
GROUP BY
  Country, Trade_Type