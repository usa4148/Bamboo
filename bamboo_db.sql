-- Bamboo Group 6
--
--

-- Create the database
CREATE DATABASE bamboo;

-- Create the wx radio call sign table
create table icao (
id int,
country3 text,	
region text,
subregion text,	
place_name text,
station_name text,	
notes text,
type text,	
icao text primary key,	
lat	float,
lon	float,
elev numeric
)

-- Create the wx warning table
create table warn  (
ISSUEDATE timestamp,
EXPIREDATE timestamp,
ISSUEWFO text,
MESSAGEID numeric primary key,
MESSAGETYPE text,
WARNINGTYPE text
)

-- Create the clean flights table
create table flights (
MONTH int,
DAY int,
DAY_OF_WEEK int,
AIRLINE varchar(2),
FLIGHT_NUMBER int,
ORIGIN_AIRPORT varchar(5),
DESTINATION_AIRPORT varchar (5),
DEPARTURE_DELAY int,
ARRIVAL_DELAY int,
DIVERTED int,
CANCELLED int,
CANCELLATION_REASON text,
AIR_SYSTEM_DELAY int,
SECURITY_DELAY int,
AIRLINE_DELAY int,
LATE_AIRCRAFT_DELAY int,
WEATHER_DELAY int,
PRIMARY KEY (MONTH, DAY, FLIGHT_NUMBER, ORIGIN_AIRPORT)
)



