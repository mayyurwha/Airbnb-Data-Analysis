# Airbnb-Data-Analysis
This project focuses on analyzing Airbnb data across multiple countries in Europe. The dataset includes information about various aspects of Airbnb listings, such as room types, host details, cleanliness ratings, and more. The project aims to provide valuable insights into accommodation trends, guest satisfaction, and other relevant factors.


KEY FEATURES
1. Data collection: The project involves collecting Airbnb data from multiple European countries and storing it in a structured database.
2. Database Design: Two tables, 'Airbnb_weekends' and 'Airbnb_weekdays', are created to distinguish between weekend and weekday data. These tables are then combined into a view, 'Airbnb', which is used for visualization and analysis.
3. ETL Process: Data is loaded into the database using BULK INSERT command, faciliating the Extract, Transform, Load (ETL) process.
4. Power BI Integration: The 'Airbnb' view table is loaded into Power BI for comprehensive visualization and analysis. Power BI dashboards and reports are created to showcase trends, patterns, and key metrics.

USAGE
The 'Airbnb.sql' file provided in this repository sets up the database schema and loads the Airbnb data.
The Power BI connects to the database and visualizes the data from the 'Airbnb' view.

ACKNOWLEDGEMENTS
The project is inspired by the desire to gain valuable insights into the dynamics of Airbnb accommodations in Europe. It leverages SQL for data manipulation and Power BI for interactive visualizations.
