This is an end to end data pipeline that used Data Engineering concepts and tools to analyse the US Transborder Freight Data for the year 2024.

The following tools have been used:
Docker for containerization
Kestra for workflow orchestration
Google Cloud Platform for data Storage
Google BigQuery for data processing 
Looker Studio for data analysis


Note: There is a pdf document in the Data folder that explains each parameter/column in the csv files.

🚀 Project Setup & Execution Guide
This project focuses on building a data pipeline using Kestra, Google Cloud Storage, BigQuery, and Looker Studio for data analysis and visualization. Follow the steps below to replicate the project end-to-end:

📥 1. Download the Data
Visit this link to download the required freight data.

🧹 2. Clean the Data
Manually remove unnecessary files or datasets not relevant to your analysis.

Ensure all CSVs are consistent in structure and naming before upload.

☁️ 3. Set Up Google Cloud Services
Create a Google Cloud Storage (GCS) bucket to act as your data lake.

Create a BigQuery dataset to store and query the processed data.

Set up a Google Cloud service account with permissions for both GCS and BigQuery.

🐳 4. Set Up Kestra Using Docker
Install Docker on your system.

Use Docker to run a Kestra container, which will help manage and orchestrate your ETL workflows.

🔄 5. Build the ETL Pipeline with Kestra
Create a Kestra pipeline to automate:

Uploading cleaned data from local storage to your GCS bucket.

Loading that data into BigQuery from GCS.

🔐 6. Configure Access
Use key-value stores or secrets management within Kestra to securely connect:

To your Google Cloud Storage bucket

To your BigQuery dataset via the service account credentials

🛠️ 7. Perform Data Transformations
Once the data is loaded into BigQuery, write SQL transformations to:

Standardize column names

Concatenate multiple monthly files into a single unified table

🧾 8. Write Analytical Queries
Write custom SQL queries in BigQuery to:

Summarize key trade metrics

Extract insights by country, mode of transportation, and trade type

📊 9. Connect Looker Studio
Connect Looker Studio to your BigQuery dataset

Add the prepared queries or tables as data sources in your report

📈 10. Visualize the Insights
Use charts, tables, and scorecards in Looker Studio to analyze:

Import/export values by country

Mode of transportation distribution

Time trends across months

Access the final Looker dashboard here:
👉 Looker Studio Report

