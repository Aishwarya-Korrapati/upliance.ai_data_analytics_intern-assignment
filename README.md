# upliance.ai_data_analytics_intern-assignment

## Data Analytics Assignment: User Behavior, Cooking Preferences, and Order Trends
## Overview
The objective of this assignment is to analyze datasets related to user behavior, cooking preferences, and order trends. This project involves working with three datasets: UserDetails, CookingSessions, and OrderDetails. The goal is to clean and merge the data, identify popular dishes, explore the relationship between cooking sessions and user orders, and provide insights on user behavior, with a focus on the impact of demographic factors.

## Datasets
The following datasets are used in the analysis:

UserDetails: Contains information about users, including their ID, name, age, location, registration date, phone number, email, favorite meal, and total orders placed.

CookingSessions: Contains information about cooking sessions, including the session ID, user ID, dish name, meal type (e.g., breakfast, lunch, dinner), session start and end times, session duration, and session rating.

OrderDetails: Contains information about user orders, including order ID, user ID, order date, meal type, dish name, order status, order amount, time of day, and order rating.

## Task Breakdown
### Data Cleaning:

Remove rows with null or incomplete values.
Handle duplicate entries and ensure data consistency.
Clean any irrelevant or erroneous data.
### Data Merging:

Merge the three datasets (UserDetails, CookingSessions, and OrderDetails) based on the User_ID and Dish_Name fields.


### Analysis:

Identify popular dishes based on both cooking sessions and user orders.
Analyze the relationship between cooking session ratings and order ratings for each dish.
Calculate the frequency of cooking and ordering each dish for different users.
Examine how user demographics (age, location, favorite meal) influence their cooking and ordering behaviors.
### Visualization:

Create visualizations to showcase the insights derived from the analysis. These may include bar charts, line graphs, pie charts, etc.
Visualize the average cooking ratings and order ratings for different dishes.
Display user preferences for different meal types (breakfast, lunch, dinner).

## Prerequisites
MySQL or any other SQL-based database system.
Any SQL client to run queries and interact with the database.

### Clone this repository:

git clone https://github.com/Aishwarya-Korrapati/upliance.ai_data_analytics_intern-assignment.git
### Set up the database:

Create a database in your MySQL environment and import the provided datasets (e.g., UserDetails, CookingSessions, OrderDetails).
Ensure the relationships between tables (i.e., the User_ID field) are correctly maintained.
### Running the Code
Import the provided SQL queries into your SQL client.
Run the queries to clean, merge, and analyze the data.
Execute visualization scripts (if applicable) using tools like Python (Matplotlib, Seaborn) or BI tools like Power BI or Tableau.
View the results.

### Visualizations
Popular Dishes: Visualize the most frequently cooked and ordered dishes.
User Preferences: Visualize the distribution of favorite meals and order trends across different locations and age groups.


## Conclusion
This analysis aims to provide a detailed understanding of user behavior and cooking preferences, using data to offer actionable business insights. By focusing on improving cooking sessions and order experiences, businesses can enhance customer satisfaction and engagement.
