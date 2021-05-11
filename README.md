# Bamboo
Bamboo Group ETL Project
Project Members: Dan Cusick, Michelle Goldberg, Will Whalen, and Vaidehee Shah 
Data Sets: 2015 Flight Delays and Severe Weather Data
https://www.kaggle.com/usdot/flight-delays


Purpose of the Repository

This Repository has been made to summarize the ETL project assignment for our Data Science Bootcamp at Northwestern University

ETL PROJECT

Students: Dan Cusick, Michelle Goldberg, Will Whalen, and Vaidehee Shah

May 2021
 
Data Sets: 2015 Flight Delays and Severe Weather Data
https://www.kaggle.com/usdot/flight-delays
https://www.ncdc.noaa.gov/swdi/csv.html 

Introduction:

Every year, there is a considerable number of flights that are delayed or cancelled due to a variety of reasons. These delays not only cost millions of dollars in revenue to the airline companies, but also cause inconviences to travelers. Flight delays are caused by a variety of reasons ranging from weather conditions, air traffic control, security etc. While many flight delays are unpredictable, many delays can be minimized by studying historical airline data. 

The objective of the project is perform ETL (extract, transform, and load) the datasets. This analysis of the historic flight data will allow us to gain valuable insights and determine what weather conditions cause flight delays. To do this, we pulled two datasets. One provides flight data, and one provides severe weather data from 2015. These datasets were then merged to create a master dataset for analysis. The dataset was then analyzed to identify if the flight delays in 2015 has a correlation with the severe weather data warnings. 

Description of Datasets:

Context

The U.S. Department of Transportation's (DOT) Bureau of Transportation Statistics tracks the on-time performance of domestic flights operated by large air carriers. 
Summary information on the number of on-time, delayed, canceled, and diverted flights is published in DOT's monthly Air Travel Consumer Report and in this dataset of 2015 flight delays and cancellations.

Acknowledgements

The flight delay and cancellation data was collected and published by the DOT's Bureau of Transportation Statistics.

airlines.csv: included the shortcode and corresponding airline name
airports.csv: included the IATA airport code, full name, address and lat long of airports
flights.csv: Includes flight delay information with delay time, airline shortcode and date details
warn-2015.xlsx: includes severe data weather warnings from 2015

Workflow was as follows:

1) Datasets were identified
  a) 2015 Flight Data
    i) airlines.csv
    ii) airports.csv
    iii) flights.csv 
  b) 2015 Weather Data
    i) warn-2015.xlsx
    
2) Data Sets were read into JupyterLab
   a) Data files were read into JupyterLab using Pandas
3) Data was cleaned
  a) N/A Values were dropped
  b) Duplicate Values were dropped
  c) Unwanted columns were dropped
4) New DataFrames with cleaned data were created
5) Data was loaded into a database
6) Data was read in a database
7) Datasets were joined to create a final database to perform queries


Inside of this repository:

1) README.md: provides the project's objective and analysis
2) Bamboo_db.sql
   a) DB was created
   b) WX Radio Call Sign Table was created
   c) WX Warning Table was created 
   d) Flights Table was created 
   <img width="482" alt="image" src="https://user-images.githubusercontent.com/79955097/117875623-011db880-b268-11eb-8f17-366664075a4b.png">
  

3) icao_csv.cleanup.ipynb
   a) location-identifier-database-202103.csv data was read in as a DF
   b) New DF was created with just US stations
   c) N/A values were dropped
   d) Unwanted columns were dropped
   e) Duplicates were dropped
   f) New cleaned DF was read
<img width="547" alt="Screen Shot 2021-05-11 at 2 47 46 PM" src="https://user-images.githubusercontent.com/79955097/117875813-3a562880-b268-11eb-8160-130665659154.png">

<img width="595" alt="Screen Shot 2021-05-11 at 2 47 53 PM" src="https://user-images.githubusercontent.com/79955097/117875823-3c1fec00-b268-11eb-8901-9066ef107f2d.png">

4) Airline_data.ipynb
   a) read in flights.csv data - dropped duplicates
   b) read in airline.csv data 
   c) read in airport.csv data
   d) read in weather data - dropped N/A values/columns

<img width="585" alt="Screen Shot 2021-05-11 at 2 47 13 PM" src="https://user-images.githubusercontent.com/79955097/117875752-28748580-b268-11eb-80f8-8bdb9dd80331.png">

<img width="600" alt="Screen Shot 2021-05-11 at 2 47 19 PM" src="https://user-images.githubusercontent.com/79955097/117875770-2dd1d000-b268-11eb-9756-8145829bc359.png">

<img width="615" alt="Screen Shot 2021-05-11 at 2 47 28 PM" src="https://user-images.githubusercontent.com/79955097/117875793-34604780-b268-11eb-8935-984aa8faa1ea.png">

5) warn_csv_cleanup.ipynb
   a)  weather data was cleaned - dropped polygon columns
 <img width="663" alt="Screen Shot 2021-05-11 at 2 46 57 PM" src="https://user-images.githubusercontent.com/79955097/117875678-11ce2e80-b268-11eb-9bd3-4fc675a8cc4e.png">

Questions that can be answered through analysis:

1) Does the month of the flight have an impact on flight delays?
2) Does the day of the week impact flight delays? which day of the week has the most flight delays vs least flight delays? 
3) Does time of day impact flight delays? what time of the day has greater flight delays? 
4) Which destinations have seen the most flight delays? 
5) Which airlines have more flight delays? 
6) Causes of flight delays 

Throughout this analysis, we hope to predict whether a flight will be delayed based on flight characteristics. This can help airlines, passengers, etc. determine future delays and hopefully minimize them.






