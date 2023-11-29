-- Create table for weekend data
USE Airbnb
CREATE TABLE Airbnb_weekends( 	
    airbnb_id int identity, 	
    realSum float NULL, 	
    room_type nvarchar(50) NULL, 	
    room_shared nvarchar(50) NULL, 	
    room_private nvarchar(50) NULL, 	
    person_capacity tinyint NULL, 	
    host_is_superhost nvarchar(50) NULL, 	
    multi nvarchar(50) NULL, 	
    biz bit NULL, 	
    cleanliness_rating tinyint NULL, 	
    guest_satisfaction_overall tinyint NULL, 	
    bedrooms tinyint NULL, 	
    dist float NULL, 	
    metro_dist float NULL, 	
    attr_index float NULL, 	
    attr_index_norm float NULL, 	
    rest_index float NULL,
    rest_index_norm float NULL,
    lng float NULL,
    lat float NULL,
    country nvarchar(25) NULL,
    weekend nvarchar(10) NULL
);

-- Create table for weekday data
CREATE TABLE Airbnb_weekdays( 	
    airbnb_id int identity, 	
    realSum float NULL, 	
    room_type nvarchar(50) NULL, 	
    room_shared nvarchar(50) NULL, 	
    room_private nvarchar(50) NULL, 	
    person_capacity tinyint NULL, 	
    host_is_superhost nvarchar(50) NULL, 	
    multi nvarchar(50) NULL, 	
    biz bit NULL, 	
    cleanliness_rating tinyint NULL, 	
    guest_satisfaction_overall tinyint NULL, 	
    bedrooms tinyint NULL, 	
    dist float NULL, 	
    metro_dist float NULL, 	
    attr_index float NULL, 	
    attr_index_norm float NULL, 	
    rest_index float NULL,
    rest_index_norm float NULL,
    lng float NULL,
    lat float NULL,
    country nvarchar(25) NULL,
    day_of_week nvarchar(10) NULL
);

-- Load data into the Airbnb_weekends table
BULK INSERT Airbnb_weekends
FROM 'C:\Users\mayow\OneDrive\Desktop\Data&Analyst\AirBnb\ArBnB Project\vienna_weekends.csv' 
WITH
(     
    FORMAT='CSV',
    FIRSTROW=2,  
    FIELDTERMINATOR = ',',       
    ROWTERMINATOR = '\n'   
);

-- Load data into the Airbnb_weekdays table
BULK INSERT Airbnb_weekdays
FROM 'C:\Users\mayow\OneDrive\Desktop\Data&Analyst\AirBnb\ArBnB Project\vienna_weekdays.csv' 
WITH
(     
    FORMAT='CSV',
    FIRSTROW=2,  
    FIELDTERMINATOR = ',',       
    ROWTERMINATOR = '\n'   
);

-- Update values in the Airbnb_weekends table for each country
UPDATE Airbnb_weekends 
SET COUNTRY = 'vienna',  day_of_week = 'Weekend' 
WHERE COUNTRY IS NULL and day_of_week IS NULL;


-- Update values in the Airbnb_weekendays table
UPDATE Airbnb_weekends 
SET COUNTRY = 'vienna',  day_of_week = 'Weekday' 
WHERE COUNTRY IS NULL and day_of_week IS NULL;

-- Display data from Airbnb_weekends table
SELECT * FROM Airbnb_weekends;

-- Create a view combining data from both weekend and weekday tables
CREATE VIEW Airbnb AS 
SELECT * FROM Airbnb_weekends
UNION ALL
SELECT * FROM Airbnb_weekdays;

-- Display data from the combined view
SELECT * FROM Airbnb;
