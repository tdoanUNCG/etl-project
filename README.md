# etl-project

ETL Group Project
Matthew, Thien, Lorelle

Data Sources
1.	Start up investments: 
https://www.kaggle.com/arindam235/startup-investments-crunchbase
2.	Median income in USA by city: 
https://www.kaggle.com/goldenoakresearch/us-household-income-stats-geo-locations

Business Questions:
1.	What, if any, are the factors/criteria that make a start-up company successful based on the three categories: operating, acquired, closed
2.	Correlation between median income and start-up funding amount received 

Process Breakdown:
1. Extract
•	Pulled two datasets from kaggle.com (see data sources above)
    1. investments
    2. income
2. Transform
•	Clean up datasets
    *	Create two dataframes from the datasets
    *   Remove extraneous columns
    *   Remove nulls
    *   Convert monetary values from object to float
    *	Do loc and filter investments.csv by US
    *	Join the two dataframes by state abbreviation
    *   Create 5 different tables through pandas to facilitate data analysis 
            - Companies
            - State
            - Market
            - Status
            - Funding Range
    *   Export all tables as csv
3. Load
•	Create 5 tables in PostgreSQL
•   Import csv tables into tables 