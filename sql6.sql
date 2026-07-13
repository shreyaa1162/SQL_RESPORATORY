USE indigo;
SHOW TABLES;
SELECT * FROM `indigo dataset`;


SELECT Gender,
CONCAT(
ROUND(COUNT(*)*100/(SELECT COUNT(*) FROM `indigo dataset`),2),'%') AS Percentage
FROM `indigo dataset`
GROUP BY Gender;



SELECT MAX(Ticket_Price) AS Highest_Ticket_Price,
       MIN(Ticket_Price) AS Lowest_Ticket_Price
FROM `indigo dataset`;



SELECT Travel_Class,
CONCAT(
ROUND(COUNT(*)*100/
(SELECT COUNT(*) FROM `indigo dataset`),2),'%') AS Passenger_Ratio
FROM `indigo dataset`
GROUP BY Travel_Class;



SELECT Travel_Class,
SUM(Ticket_Price) AS Total_Revenue
SELECT Source_City,
FROM `indigo dataset`
GROUP BY Travel_Class;



(
SELECT 'Highest' AS Category,
       Source_City,
       COUNT(*) AS Total_Passengers
FROM `indigo dataset`
GROUP BY Source_City
ORDER BY Total_Passengers DESC
LIMIT 5
)
UNION
(
SELECT 'Lowest' AS Category,
       Source_City,
       COUNT(*) AS Total_Passengers
FROM `indigo dataset`
GROUP BY Source_City
ORDER BY Total_Passengers ASC
LIMIT 5
);


SELECT Payment_Mode,
SUM(Ticket_Price) AS Revenue,
CONCAT(
ROUND(
SUM(Ticket_Price)*100/
(SELECT SUM(Ticket_Price)
FROM `indigo dataset`),2
),
'%'
) AS Revenue_Ratio
FROM `indigo dataset`
GROUP BY Payment_Mode;


SELECT ROUND(
COUNT(*)/
COUNT(DISTINCT Flight_ID),2
) AS Avg_Passengers_Per_Flight
FROM `indigo dataset`;



(
SELECT 'Most Popular' AS Category,
       Source_City,
       Destination_City,
       COUNT(*) AS Total_Passengers
FROM `indigo dataset`
GROUP BY Source_City, Destination_City
ORDER BY Total_Passengers DESC
LIMIT 5
)
UNION
(
SELECT 'Least Popular' AS Category,
       Source_City,
       Destination_City,
       COUNT(*) AS Total_Passengers
FROM `indigo dataset`
GROUP BY Source_City, Destination_City
ORDER BY Total_Passengers ASC
LIMIT 5
);



SELECT ROUND(AVG(Delay_Minutes),2) AS Average_Delay_Minutes
FROM `indigo dataset`
WHERE Flight_Status = 'Delayed';



SELECT Payment_Mode,
CONCAT(
ROUND(
COUNT(*) * 100 /
(SELECT COUNT(*) FROM `indigo dataset`),2),'%')AS Passenger_Ratio
FROM `indigo dataset`
GROUP BY Payment_Mode;



SELECT Source_City,
CONCAT(
ROUND(
COUNT(*) * 100 /
(SELECT COUNT(*) FROM `indigo dataset`),2),'%') AS Passenger_Percentage
FROM `indigo dataset`
GROUP BY Source_City
ORDER BY Passenger_Percentage DESC;



SELECT COUNT(DISTINCT CONCAT(Source_City,'-',Destination_City))
AS Unique_Routes
FROM `indigo dataset`;



SELECT Source_City,
SUM(Ticket_Price) AS Revenue
FROM `indigo dataset`
GROUP BY Source_City
ORDER BY Revenue DESC
LIMIT 1;


SELECT MAX(Baggage_Weight) AS Maximum_Baggage_Weight
FROM `indigo dataset`;