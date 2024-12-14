use restaurant;
CREATE TABLE UserDetails (
    User_ID VARCHAR(10) PRIMARY KEY,
    User_Name VARCHAR(50),
    Age INT,
    Location VARCHAR(50),
    Registration_Date DATE,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Favorite_Meal VARCHAR(20),
    Total_Orders INT
);

INSERT INTO UserDetails (User_ID, User_Name, Age, Location, Registration_Date, Phone, Email, Favorite_Meal, Total_Orders) 
VALUES 
('U001', 'Alice Johnson', 28, 'New York', '2023-01-15', '123-456-7890', 'alice@email.com', 'Dinner', 12),
('U002', 'Bob Smith', 35, 'Los Angeles', '2023-02-20', '987-654-3210', 'bob@email.com', 'Lunch', 8),
('U003', 'Charlie Lee', 42, 'Chicago', '2023-03-10', '555-123-4567', 'charlie@email.com', 'Breakfast', 15),
('U004', 'David Brown', 27, 'San Francisco', '2023-04-05', '444-333-2222', 'david@email.com', 'Dinner', 10),
('U005', 'Emma White', 30, 'Seattle', '2023-05-22', '777-888-9999', 'emma@email.com', 'Lunch', 9),
('U006', 'Frank Green', 25, 'Austin', '2023-06-15', '888-777-6666', 'frank@email.com', 'Dinner', 7),
('U007', 'Grace King', 38, 'Boston', '2023-07-02', '999-888-7777', 'grace@email.com', 'Breakfast', 14),
('U008', 'Henry Lee', 31, 'Miami', '2023-08-11', '101-202-3030', 'henry@email.com', 'Dinner', 5),
('U009', 'Irene Moore', 33, 'Dallas', '2023-09-01', '202-303-4040', 'irene@email.com', 'Lunch', 6),
('U010', 'Jack White', 29, 'Phoenix', '2023-10-10', '303-404-5050', 'jack@email.com', 'Dinner', 8);


CREATE TABLE cooking_session (
  Session_ID VARCHAR(10),
  User_ID VARCHAR(10),
  Dish_Name VARCHAR(50),
  Meal_Type VARCHAR(20),
  Session_Start DATETIME,
  Session_End DATETIME,
  Duration INT,
  Session_Rating DECIMAL(3,1)
);


INSERT INTO cooking_session (Session_ID, User_ID, Dish_Name, Meal_Type, Session_Start, Session_End, Duration, Session_Rating)
VALUES
('S001', 'U001', 'Spaghetti', 'Dinner', '2024-12-01 19:00:00', '2024-12-01 19:30:00', 30, 4.5),
('S002', 'U002', 'Caesar Salad', 'Lunch', '2024-12-01 12:00:00', '2024-12-01 12:20:00', 20, 4),
('S003', 'U003', 'Grilled Chicken', 'Dinner', '2024-12-02 19:30:00', '2024-12-02 20:10:00', 40, 4.8),
('S004', 'U001', 'Pancakes', 'Breakfast', '2024-12-02 07:30:00', '2024-12-02 08:00:00', 30, 4.2),
('S005', 'U004', 'Caesar Salad', 'Lunch', '2024-12-03 13:00:00', '2024-12-03 13:15:00', 15, 4.7),
('S006', 'U002', 'Spaghetti', 'Dinner', '2024-12-03 18:30:00', '2024-12-03 19:00:00', 30, 4.3),
('S007', 'U005', 'Grilled Chicken', 'Dinner', '2024-12-04 18:00:00', '2024-12-04 18:45:00', 45, 4.6),
('S008', 'U003', 'Veggie Burger', 'Lunch', '2024-12-04 13:30:00', '2024-12-04 13:50:00', 20, 4.4),
('S009', 'U001', 'Grilled Chicken', 'Dinner', '2024-12-05 19:00:00', '2024-12-05 19:40:00', 40, 4.9),
('S010', 'U002', 'Oatmeal', 'Breakfast', '2024-12-05 07:00:00', '2024-12-05 07:10:00', 10, 4.1),
('S011', 'U003', 'Pancakes', 'Breakfast', '2024-12-06 08:00:00', '2024-12-06 08:30:00', 30, 4.6),
('S012', 'U004', 'Spaghetti', 'Dinner', '2024-12-06 19:00:00', '2024-12-06 19:40:00', 40, 4.7),
('S013', 'U005', 'Caesar Salad', 'Lunch', '2024-12-07 12:30:00', '2024-12-07 13:00:00', 30, 4.4),
('S014', 'U006', 'Grilled Chicken', 'Dinner', '2024-12-07 18:00:00', '2024-12-07 18:45:00', 45, 4.8),
('S015', 'U007', 'Spaghetti', 'Dinner', '2024-12-08 19:30:00', '2024-12-08 20:10:00', 40, 5),
('S016', 'U008', 'Veggie Burger', 'Lunch', '2024-12-08 13:30:00', '2024-12-08 13:50:00', 20, 5);

CREATE TABLE order_details (
Order_ID VARCHAR(10),
User_ID VARCHAR(10),
Order_Date DATE,
Meal_Type VARCHAR(20),
Dish_Name VARCHAR(50),
Order_Status VARCHAR(20),
Amount DECIMAL(5,2),
Time_of_Day VARCHAR(20),
Rating DECIMAL(3,1)
);

INSERT INTO order_details (Order_ID, User_ID, Order_Date, Meal_Type, Dish_Name, Order_Status, Amount, Time_of_Day, Rating)
VALUES
('1001', 'U001', '2024-12-01', 'Dinner', 'Spaghetti', 'Completed', 15.00, 'Night', 4.5),
('1002', 'U002', '2024-12-01', 'Lunch', 'Caesar Salad', 'Completed', 10.00, 'Day', 4.0),
('1003', 'U003', '2024-12-02', 'Dinner', 'Grilled Chicken', 'Canceled', 12.50, 'Night', NULL),
('1004', 'U001', '2024-12-02', 'Breakfast', 'Pancakes', 'Completed', 8.00, 'Morning', 4.2),
('1005', 'U004', '2024-12-03', 'Lunch', 'Caesar Salad', 'Completed', 9.00, 'Day', 4.7),
('1006', 'U005', '2024-12-04', 'Dinner', 'Veggie Burger', 'Completed', 11.00, 'Night', 4.5),
('1007', 'U002', '2024-12-05', 'Lunch', 'Tacos', 'Completed', 10.50, 'Day', 4.6),
('1008', 'U003', '2024-12-06', 'Dinner', 'Fried Rice', 'Completed', 12.00, 'Night', 4.0),
('1009', 'U001', '2024-12-07', 'Breakfast', 'Omelette', 'Completed', 7.00, 'Morning', 4.5);

-- QUERIES

-- 1. Cleaning and Merging the Data

-- a.cleaning
SELECT * FROM UserDetails WHERE User_Name IS NULL OR Age IS NULL;
SELECT * FROM cooking_session WHERE Dish_Name IS NULL OR Session_Rating IS NULL;
SELECT * FROM order_details WHERE Dish_Name IS NULL OR Rating IS NULL;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM UserDetails
WHERE User_ID IS NULL
  AND User_Name IS NULL
  AND Age IS NULL
  AND Location IS NULL
  AND Registration_Date IS NULL
  AND Phone IS NULL
  AND Email IS NULL
  AND Favorite_Meal IS NULL
  AND Total_Orders IS NULL;

SET SQL_SAFE_UPDATES = 1; 

-- Replace with average rating
SET SQL_SAFE_UPDATES = 0;
UPDATE order_details
SET Rating = (
    SELECT AVG(Rating)
    FROM (SELECT Rating FROM order_details WHERE Rating IS NOT NULL) AS temp
)
WHERE Rating IS NULL;

SET SQL_SAFE_UPDATES = 1; -- Re-enable safe update mode


-- Merge UserDetails, CookingSessions, and OrderDetails on their respective keys
SELECT 
    u.User_ID, u.User_Name, u.Age, u.Location, u.Favorite_Meal,
    c.Dish_Name AS Cooked_Dish, c.Meal_Type AS Cooked_Meal_Type,
    c.Session_Start, c.Session_Rating,
    o.Dish_Name AS Ordered_Dish, o.Meal_Type AS Ordered_Meal_Type,
    o.Amount, o.Order_Status, o.Rating AS Order_Rating
FROM 
    UserDetails u
LEFT JOIN 
    cooking_session c ON u.User_ID = c.User_ID
LEFT JOIN 
    order_details o ON u.User_ID = o.User_ID;
    
-- b. Merge Tables:

SELECT 
    u.User_ID, u.User_Name, u.Age, u.Location, u.Favorite_Meal,
    c.Dish_Name AS Cooked_Dish, c.Meal_Type AS Cooked_Meal_Type,
    c.Session_Start, c.Session_Rating,
    o.Dish_Name AS Ordered_Dish, o.Meal_Type AS Ordered_Meal_Type,
    o.Amount, o.Order_Status, o.Rating AS Order_Rating
FROM 
    UserDetails u
LEFT JOIN 
    cooking_session c ON u.User_ID = c.User_ID
LEFT JOIN 
    order_details o ON u.User_ID = o.User_ID;
    
-- 2. Analyzing Relationships

-- a. Relationship Between Cooking Sessions and Orders:
SELECT
    u.User_ID,
    u.User_Name,
    c.Dish_Name AS Cooked_Dish,
    o.Dish_Name AS Ordered_Dish,
    COUNT(*) AS Frequency
FROM
    UserDetails u
JOIN
    cooking_session c ON u.User_ID = c.User_ID
JOIN
    order_details o ON u.User_ID = o.User_ID
WHERE
    c.Dish_Name = o.Dish_Name
GROUP BY
    u.User_ID, u.User_Name, c.Dish_Name, o.Dish_Name
LIMIT 2000;


-- b. Average Ratings by Dish:

SELECT
    c.Dish_Name,
    AVG(c.Session_Rating) AS Avg_Cooking_Rating,
    AVG(o.Rating) AS Avg_Order_Rating
FROM
    cooking_session c
JOIN
    order_details o ON c.Dish_Name = o.Dish_Name
GROUP BY
    c.Dish_Name
LIMIT 2000;

-- 3. Identifying Popular Dishes
-- a. Most Cooked Dishes:

SELECT Dish_Name, COUNT(*) AS Cook_Count
FROM cooking_session
GROUP BY Dish_Name
ORDER BY Cook_Count DESC
LIMIT 5;

-- b. Most Ordered Dishes:

SELECT Dish_Name, COUNT(*) AS Order_Count
FROM order_details
GROUP BY Dish_Name
ORDER BY Order_Count DESC
LIMIT 5;


-- 4. Exploring Demographic Factors

-- a. Age Influence on Preferences:

SELECT 
    Age, Meal_Type, COUNT(*) AS Count
FROM 
    UserDetails u
JOIN 
    order_details o ON u.User_ID = o.User_ID
GROUP BY 
    Age, Meal_Type
ORDER BY 
    Age, Count DESC;
    
-- b. Location-Based Trends:

SELECT 
    Location, Meal_Type, COUNT(*) AS Count
FROM 
    UserDetails u
JOIN 
    order_details o ON u.User_ID = o.User_ID
GROUP BY 
    Location, Meal_Type
ORDER BY 
    Count DESC;









