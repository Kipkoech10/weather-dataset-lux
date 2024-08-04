CREATE table weather_data (
date_time date,
temp decimal(5,2),
dew_point decimal(5,2),
humidity int,
wind_speed int,
visibility decimal(5,2),
pressure decimal(5,2),
weather varchar(50)
)

SELECT *
FROM weather_data wd ;

--Find all records where the weather was exactly clear.
SELECT *
FROM weather_data wd 
WHERE Weather = 'Clear'

--Find the number of times the wind speed was exactly 4 km/hr.
SELECT COUNT(*)
from weather_data wd 
WHERE "Wind Speed_km/h" = 4;

--Check if there are any NULL values present in the dataset.
SELECT *
FROM weather_data wd 
WHERE "Date/Time" ISNULL OR 
Temp_C ISNULL OR 
"Dew Point Temp_C" ISNULL OR 
"Rel Hum_%" ISNULL OR 
"Wind Speed_km/h" ISNULL OR 
Visibility_km ISNULL OR 
Press_kPa ISNULL OR 
Weather ISNULL ;

--Rename the column "Weather" to "Weather_Condition."
ALTER table weather_data 
rename column weather to Weather_Condition;

SELECT weather_condition
from weather_data wd ;

--What is the mean visibility of the dataset?
SELECT AVG(visibility_km) 
from weather_data wd ;

--Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
SELECT COUNT(*)
FROM weather_data wd 
WHERE "Wind Speed_km/h" > 24
AND Visibility_km = 25;

--What is the mean value of each column for each weather condition?
SELECT Weather_condition,
AVG(Temp_C),
AVG("Dew Point Temp_C"),
AVG("Rel Hum_%"),
AVG("Wind Speed_km/h"),
AVG(Visibility_km),
AVG(Press_kPa) 
from weather_data wd 
group by Weather_condition
;

--Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.
SELECT weather_condition,"Rel Hum_%" ,Visibility_km 
FROM weather_data wd 
WHERE weather_condition = 'Clear'
AND ("Rel Hum_%" > 50 OR Visibility_km >40);

--Find the number of weather conditions that include snow.
SELECT COUNT(weather_condition)
from weather_data wd 
WHERE weather_condition LIKE '%Snow%';