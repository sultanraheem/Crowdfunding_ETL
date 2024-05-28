## Crowdfunding ETL Project

For Project 2 (ETL Mini Project), we collaborated to build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform data. After transforming the data, we created four CSV files and used the CSV data to make an ERD with the SQL table schema. Finally, we extracted the data and uploaded it as separate CSV files. We attempted to import the files into pgAdmin4 but it was not the most successful process, it may be incomplete.

# Install

Clone the repository.
Install dependencies using pip install -r requirements.txt.
Set up your database and configure environment variables as needed.

GitBash link: git clone https://github.com/sultanraheem/Crowdfunding_ETL.git

pandas: For data manipulation.
sqlalchemy: For interacting with the database.

import pandas as pd
import numpy as np

## Import Reqs

import pandas as pd
import numpy as np
import json

# CSV files will be needed through:

file_path = 'Resources/contacts.xlsx'

category_df.to_csv("Resources/category.csv", index=False)

subcategory_df.to_csv("Resources/subcategory.csv", index=False)

crowdfunding_info_df = pd.read_excel('Resources/crowdfunding.xlsx')

# Be sure to export new CSV files through:
contact_info_df.to_csv("Resources/contacts.csv", encoding='utf8', index=False)

I have seen resources/results also work for finding all files in the resources folder

## Authors

Sultan Raheem

Mahind Rao

## NOTE

This assignment was completed with Mahind Rao along with help from both Divya Suthraye and Sunil Khambaita



