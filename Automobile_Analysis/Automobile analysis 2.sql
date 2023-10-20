create database Automobile;
use Automobile;


#1. **What is the total number of records in the "automobile" dataset?**
SELECT COUNT(*) AS TOTAL_RECORDS
FROM automobile;

#2. **What are the unique car makes available in the dataset?**
SELECT DISTINCT make
FROM automobile;

#3. **How many cars are there for each make?**

SELECT make, COUNT(*) AS NUM_CARS
FROM automobile
GROUP BY make;

#4. **What is the average curb weight of cars by body style, ordered in descending order of weight?**

SELECT body_style, AVG(curb_weight) AS AVG_WEIGHT
FROM automobile
GROUP BY body_style
ORDER BY AVG_WEIGHT DESC;

#5. **What is the maximum engine size (engine-size) for each number of cylinders (num-of-cylinders)?**

SELECT num_of_cylinders, MAX(engine_size) AS MAX_ENGINE_SIZE
FROM automobile
GROUP BY num_of_cylinders;

#6. **What is the average highway MPG (highway-mpg) for cars with different fuel types, ordered by fuel type?**

SELECT fuel_type, AVG(highway_mpg) AS AVG_HIGHWAY_MPG
FROM automobile
GROUP BY fuel_type
ORDER BY fuel_type;

#7. **Which car has the highest price (price) and what is its make and model?**

SELECT make, SUM(price) AS TOTAL_REVENUE
FROM automobile
GROUP BY make
ORDER BY TOTAL_REVENUE DESC
LIMIT 1;

#8. **What are the different types of fuel systems in the dataset, and how many cars use each type?**

SELECT fuel_system, COUNT(*) AS num_cars
FROM automobile
GROUP BY fuel_system;

#9. **What is the average horsepower (horsepower) for cars with different aspiration types, ordered by aspiration type?**

SELECT aspiration, AVG(horsepower) AS AVG_HORSEPOWER
FROM automobile
GROUP BY aspiration
ORDER BY aspiration;

#10. **What is the average price for cars with different drive wheel types (drive-wheels), ordered by price in ascending order?**

SELECT drive_wheels, AVG(price) AS AVG_PRICE
FROM automobile
GROUP BY drive_wheels
ORDER BY AVG_PRICE;

#11. **What is the average length, width, and height of cars by body style, ordered by body style?**

SELECT body_style, AVG(length) AS AVG_LENGTH, AVG(width) AS AVG_WIDTH, AVG(height) AS AVG_HEIGHT
FROM automobile
GROUP BY body_style
ORDER BY body_style;

#12. **What is the total number of cars for each make and body style combination?**

SELECT make, body_style, COUNT(*) AS NUM_CARS
FROM automobile
GROUP BY make, body_style;

#13. **Which cars have a compression ratio (compression-ratio) greater than 10 and a city MPG (city-mpg) less than 20?**

SELECT make
FROM automobile
WHERE compression_ratio > 10 AND city_mpg < 20;

#14. **What is the average price of cars with different fuel types, body styles, and drive wheels, ordered by fuel type, body style, and drive wheel?**

SELECT fuel_type, body_style, drive_wheels, AVG(price) AS AVG_PRICE
FROM automobile
GROUP BY fuel_type, body_style, drive_wheels
ORDER BY fuel_type, body_style, drive_wheels;

#15. **Which cars have the highest horsepower-to-curb-weight ratio (horsepower divided by curb-weight), and what is that ratio?**

SELECT make, (horsepower / curb_weight) AS hp_to_curb_weight_ratio
FROM automobile
ORDER BY hp_to_curb_weight_ratio DESC
LIMIT 1;

#16. **What is the total number of doors (num-of-doors) for each body style?**


#17. **What is the average price of cars with different numbers of doors and body styles, ordered by body style and number of doors?**


#18. **What is the average price for cars with different fuel types and aspiration types, ordered by fuel type and aspiration type?**


#19. **What is the average city MPG for cars with different body styles and drive wheels, ordered by body style and drive wheels?**


#20. **What is the average horsepower for cars with different body styles and engine types, ordered by body style and engine type?**


#21. **What is the average height of cars with different numbers of doors, ordered by number of doors?**


#22. **What is the average compression ratio for cars with different fuel types and aspiration types, ordered by fuel type and aspiration type?**


#23. **What is the average width and height of cars by make, ordered by make?**


#24. **Which car has the highest width and what is its make and model?**


#25. **What is the average price for cars with different fuel types and numbers of doors, ordered by fuel type and number of doors?**


#26. **What is the average stroke for cars with different engine types, ordered by engine type?**


#27. **What is the total number of cars for each make and aspiration type combination?**


#28. **What is the average highway MPG for cars with different engine types and fuel systems, ordered by engine type and fuel system?**


#29. **What is the total number of cars for each make and body style combination, where the height is above the average height of all cars?**


#30. **What is the average price for cars with different body styles and engine locations, ordered by body style and engine location?**
