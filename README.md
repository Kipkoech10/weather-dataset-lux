# Weather Data Analysis

This project analyzes a weather dataset using both Python and SQL. It answers various questions about weather conditions, wind speed, visibility, and more.

## Dataset

The dataset used in this project is a CSV file from kaggle.

## Python Analysis

The Python script `weather_analysis.py` uses pandas to perform the following analyses:

1. Find all records with clear weather
2. Count instances of 4 km/hr wind speed
3. Check for NULL values
4. Rename the "Weather" column
5. Calculate mean visibility
6. Find records with high wind speed and good visibility
7. Calculate mean values by weather condition
8. Find instances of clear weather with high humidity or good visibility
9. Count weather conditions including snow

## SQL Analysis

The SQL script `weather_analysis.sql` performs similar analyses using a relational database. It includes queries to:

1. Find records with clear weather
2. Count instances of 4 km/hr wind speed
3. Rename the "Weather" column
4. Calculate mean visibility

## Requirements

- Python 3.x
- pandas
- numpy
- sqlite database using dbeaver

## Usage

1. Ensure you have the required Python libraries installed:
2. Run the Python script:
3. Import the CSV data into your chosen database system
4. Run the SQL queries in your database management tool

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
