This is an end to end data pipeline that used Data Engineering concepts and tools to analyse the US Transborder Freight Data for the year 2024.

The following tools have been used:
Docker for containerization
Kestra for workflow orchestration
Google Cloud Platform for data Storage
Google BigQuery for data processing 
Looker Studio for data analysis


Note: There is a pdf document in the Data folder that explains each parameter/column in the csv files.

**Problem Description**

The dataset contains data on the import and export of goods between the United States and Canada and Mexico. The import/exports are characterized and categorized by various features such as price of transportation, weight of goods being transported, between which states/provinces this activity takes place, what types of goods are being transported, means of transportation, and other features. The goal of this project is to analyse the cost of imports and exports throughout 2024, which mode of transportation has the highest value of goods being shipped, major contributer of the US towards import and export.

🚀 **Project Setup & Execution Guide**

This project focuses on building a data pipeline using Kestra, Google Cloud Storage, BigQuery, and Looker Studio for data analysis and visualization. Follow the steps below to replicate the project end-to-end:

📥 1. Download the Data

    - Visit this [link](https://data.bts.gov/stories/s/kijm-95mr) to download the required freight data.

🧹 2. Clean the Data

    - Manually remove unnecessary files or datasets not relevant to your analysis.
    
    - Ensure all CSVs are consistent in structure and naming before upload.

☁️ 3. Set Up Google Cloud Services

    - Create a Google Cloud Storage (GCS) bucket to act as your data lake.
    
    - Create a BigQuery dataset to store and query the processed data.
    
    - Set up a Google Cloud service account with permissions for both GCS and BigQuery.

🐳 4. Set Up Kestra Using Docker

    - Install Docker on your system.
    
    - Use Docker to run a Kestra container, which will help manage and orchestrate your ETL workflows.

🔄 5. Build the ETL Pipeline with Kestra

    - Create a Kestra pipeline to automate:
    
      1. Uploading cleaned data from local storage to your GCS bucket.
      
      2. Loading that data into BigQuery from GCS.

🔐 6. Configure Access

    - Use key-value stores or secrets management within Kestra to securely connect:
    
      1. To your Google Cloud Storage bucket
      
      2. To your BigQuery dataset via the service account credentials

🛠️ 7. Perform Data Transformations

    - Once the data is loaded into BigQuery, write SQL transformations to:
    
      1. Standardize column names
      
      2. Concatenate multiple monthly files into a single unified table

🧾 8. Write Analytical Queries

    - Write custom SQL queries in BigQuery to:
    
      1. Summarize key trade metrics
      
      2. Extract insights by country, mode of transportation, and trade type

📊 9. Connect Looker Studio

    - Connect Looker Studio to your BigQuery dataset
    
    - Add the prepared queries or tables as data sources in your report

📈 10. Visualize the Insights

    - Use charts, tables, and scorecards in Looker Studio to analyze:
    
      1. Import/export values by country
      
      2. Mode of transportation distribution
      
      3. Time trends across months

Access the final **Looker** dashboard here:

👉 [Looker Studio Report](https://lookerstudio.google.com/reporting/2171fb13-01c7-4e6d-bb76-62f2b5bb964b)

