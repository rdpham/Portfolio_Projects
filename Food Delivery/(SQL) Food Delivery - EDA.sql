-- Exploratory Data Analysis 
-- Going to explore and summarize a Food Delivery database that I created from all my deliveries with DoorDash and Uber Eats (2020-2023, 2025-Present)
-- Looking to find trends, patterns, or anything interesting like outliers to help with my improving my efficency and decision making

-- Calculates the AVERAGE Base Pay for each City and Ranks from HIGHEST TO LOWEST
SELECT DeliveredCity, ROUND(AVG(BasePay),2) AS BasePay
FROM food_deliveries
GROUP BY DeliveredCity
ORDER BY BasePay DESC;

-- Calculates each City's AVERAGE tip amount from HIGHEST TO LOWEST 
SELECT DeliveredCity AS City, ROUND(AVG(tips),2) AS AvgTip
FROM food_deliveries
GROUP BY DeliveredCity
ORDER BY AvgTip DESC;

-- Calculates the AVERAGE Base Pay for each Day of the Week and Ranks from HIGHEST TO LOWEST
SELECT DayofWeek AS Day, ROUND(AVG(BasePay),2) AS BasePay
FROM food_deliveries
GROUP BY Day
ORDER BY BasePay DESC;

-- Calculates the AVERAGE tip amount for each DAY and RANKS them from HIGHEST TO LOWEST
SELECT DayOfWeek AS Day, ROUND(AVG(tips),2) AS AvgTip
FROM food_deliveries
GROUP BY DayOfWeek
ORDER BY AvgTip DESC;

-- Calculates the TOP 10 Cuisines with the HIGHEST Average Tips 
SELECT Cuisine, ROUND(AVG(TIPS),2) AS AvgTip
FROM food_deliveries
GROUP BY Cuisine
ORDER BY AvgTip DESC
LIMIT 10;

-- Calculates the TOP 10 Cuisines by Total Amount of Orders
SELECT Cuisine, COUNT(*) AS 'Amount of Orders'
FROM food_deliveries
GROUP BY Cuisine
ORDER BY COUNT(*) DESC
LIMIT 10;

-- Calculates the TOP 10 Restaurants that customers ORDERED
SELECT Restaurant, COUNT(*) AS '# of Orders'
FROM food_deliveries
GROUP BY Restaurant
ORDER BY COUNT(*) DESC
LIMIT 10;

-- Calculates the Total Earnings (Base Pay + Tips) for each Month and Ranks from HIGHEST TO LOWEST and Filtering by YEAR
SELECT Month, SUM(BasePay+Tips) AS Total_Earnings
FROM food_deliveries
WHERE Year = '2025'
GROUP BY Month
ORDER BY Total_Earnings DESC;

-- Calculate which FOOD DELIVERY PLATFORM has BETTER Tips
SELECT Platform, ROUND(AVG(Tips),2) AS AvgTips
FROM food_deliveries
GROUP BY Platform;

-- Calculate which FOOD DELIVERY PLATFORM has BETTER Base Pay
SELECT Platform, ROUND(AVG(BasePay),2) AS BasePay
FROM food_deliveries
GROUP BY Platform

























