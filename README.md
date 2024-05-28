# Crowdfunding_ETL
For Project 2 (ETL Mini Project), we worked together to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, we created four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we extracted the data and uploaded as separate CSV files. 

# Project Overview
In this project, we worked on crowdfunding data. Crowdfunding platforms generate a wealth of information, but it's often messy and unstructured. Our goal is to leverage ETL techniques to extract data from these platforms, transform it into a standardized format, and load it into a PostgreSQL database for analysis.

# Data Sources
We worked with data from various crowdfunding campaigns. This dataset includes information such as campaign IDs, company names, descriptions, contact IDs, email, first and last names, and other crowdfunding excel files. 

## Installation

1. Clone the repository.
2. Install dependencies using `pip install -r requirements.txt`.
3. Set up your database and configure environment variables as needed.

## Usage

Clone repo:

bash link: https://github.com/sultanraheem/Crowdfunding_ETL

### Python Libraries

`pandas`: For data manipulation.
`sqlalchemy`: For interacting with the database.

 databases, postgres SQL mondodb
- pgAdmin4 version 8.2 was used

  ## Import Reqs

 import pandas as pd
 import numpy as np

 import json

 CSV files will be needed through:

file_path = 'Resources/contacts.xlsx'

category_df.to_csv("Resources/category.csv", index=False)

subcategory_df.to_csv("Resources/subcategory.csv", index=False)

crowdfunding_info_df = pd.read_excel('Resources/crowdfunding.xlsx')

be sure to export new CSV file through contact_info_df.to_csv("Resources/contacts.csv", encoding='utf8', index=False)



