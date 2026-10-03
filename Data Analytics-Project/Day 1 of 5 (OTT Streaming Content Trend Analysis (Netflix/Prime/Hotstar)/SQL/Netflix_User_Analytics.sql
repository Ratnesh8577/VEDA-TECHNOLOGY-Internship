CREATE DATABASE netflix_user_analytics;
use netflix_user_analytics;

# Q1. Which subscription plan generates the highest total revenue?
CREATE VIEW total_subscription_revenue AS
SELECT
    Subscription_Plan,
    SUM(Monthly_Subscription_Fee) AS Total_Revenue
FROM Netflix_user_analytics
GROUP BY Subscription_Plan;

# result
SELECT *
FROM total_subscription_revenue
ORDER BY Total_Revenue DESC;

# Q2. Number of users in each subscription plan
CREATE VIEW no_of_subscription_users AS
SELECT
    Subscription_Plan,
    COUNT(DISTINCT User_ID) AS Total_Users
FROM Netflix_user_analytics
GROUP BY Subscription_Plan;

# Result
SELECT *
FROM no_of_subscription_users
ORDER BY Total_Users DESC;

# Q3. Average monthly subscription fee by plan
CREATE VIEW average_monthly_subscription_fee AS
SELECT
    Subscription_Plan,
    ROUND(AVG(Monthly_Subscription_Fee),2) AS Avg_Monthly_Fee
FROM Netflix_user_analytics
GROUP BY Subscription_Plan;

# Result
SELECT *
FROM average_monthly_subscription_fee;

# Q4. Which content type (Movie or TV Show) is watched the most?
CREATE VIEW content_type_popularity AS
SELECT
    Content_Type,
    COUNT(*) AS Total_Watches
FROM Netflix_user_analytics
GROUP BY Content_Type;

# Result
SELECT *
FROM content_type_popularity
ORDER BY Total_Watches DESC;

# Q5. Top 10 most watched titles
CREATE VIEW top_titles AS
SELECT
    Title,
    COUNT(*) AS Watch_Count
FROM Netflix_user_analytics
GROUP BY Title;

# Result
SELECT *
FROM top_titles
ORDER BY Watch_Count DESC
LIMIT 10;

# Q6. Which genres are most popular?
CREATE VIEW genre_popularity AS
SELECT
    Genre,
    COUNT(*) AS Total_Watches
FROM Netflix_user_analytics
GROUP BY Genre;

# Result
SELECT *
FROM genre_popularity
ORDER BY Total_Watches DESC;

# Q7. Which device is used the most?
CREATE VIEW device_usage AS
SELECT
    Device_Type,
    COUNT(*) AS Total_Users
FROM Netflix_user_analytics
GROUP BY Device_Type;

 # Result
SELECT *
FROM device_usage
ORDER BY Total_Users DESC; 

# Q8. Which operating system is used the most?
CREATE VIEW operating_system_usage AS
SELECT
    Operating_System,
    COUNT(*) AS Total_Users
FROM Netflix_user_analytics
GROUP BY Operating_System;

# Result
SELECT *
FROM vw_operating_system_usage
ORDER BY Total_Users DESC;

# Q9. Which age rating has the highest average watch time?
CREATE VIEW age_rating_watch_time AS
SELECT
    Age_Rating,
    ROUND(AVG(Watch_Time_Minutes),2) AS Avg_Watch_Time
FROM Netflix_user_analytics
GROUP BY Age_Rating;

# Result
SELECT *
FROM age_rating_watch_time
ORDER BY Avg_Watch_Time DESC;

# Q10. Top 10 countries by total watch time
CREATE VIEW country_watch_time AS
SELECT
    Country,
    SUM(Watch_Time_Minutes) AS Total_Watch_Time
FROM Netflix_user_analytics
GROUP BY Country;

# Result
SELECT *
FROM country_watch_time
ORDER BY Total_Watch_Time DESC
LIMIT 10;

# Q11. Which language has the highest watch time?
CREATE VIEW language_watch_time AS
SELECT
    Language,
    SUM(Watch_Time_Minutes) AS Total_Watch_Time
FROM Netflix_user_analytics
GROUP BY Language;

# Result
SELECT *
FROM language_watch_time
ORDER BY Total_Watch_Time DESC;

# Q12. Which payment method is most popular?
CREATE VIEW payment_method AS
SELECT
    Payment_Method,
    COUNT(*) AS Total_Payments
FROM Netflix_user_analytics
GROUP BY Payment_Method;

# Result
SELECT *
FROM payment_method
ORDER BY Total_Payments DESC;

# Q13. Average completion percentage by genre
CREATE VIEW completion_by_genre AS
SELECT
    Genre,
    ROUND(AVG(Completion_Percentage),2) AS Avg_Completion
FROM Netflix_user_analytics
GROUP BY Genre;

# Result
SELECT *
FROM completion_by_genre
ORDER BY Avg_Completion DESC;

# Q14. Churn risk distribution
CREATE VIEW churn_distribution AS
SELECT
    Churn_Risk,
    COUNT(*) AS Total_Users
FROM Netflix_user_analytics
GROUP BY Churn_Risk;

# Result
SELECT *
FROM churn_distribution
ORDER BY Total_Users DESC;

#Q15. Rank Users by Total Watch Time 
CREATE VIEW rank_users_watch_time AS
SELECT
    User_ID,
    SUM(Watch_Time_Minutes) AS Total_Watch_Time,
    RANK() OVER (ORDER BY SUM(Watch_Time_Minutes) DESC) AS User_Rank
FROM Netflix_user_analytics
GROUP BY User_ID;

# Result
SELECT *
FROM rank_users_watch_time
ORDER BY User_Rank
LIMIT 10;

#Q16. Running Total Revenue by Watch Date
CREATE VIEW running_revenue AS
SELECT
    Watch_Date,
    SUM(Monthly_Subscription_Fee) AS Daily_Revenue,
    SUM(SUM(Monthly_Subscription_Fee))
        OVER (ORDER BY Watch_Date) AS Running_Revenue
FROM Netflix_user_analytics
GROUP BY Watch_Date;

#Result
SELECT *
FROM running_revenue
ORDER BY Watch_Date;

#Q17. Categorize Users by Watch Time 
CREATE VIEW user_category AS
SELECT
    User_ID,
    Watch_Time_Minutes,
    CASE
        WHEN Watch_Time_Minutes >= 180 THEN 'Heavy User'
        WHEN Watch_Time_Minutes >= 90 THEN 'Medium User'
        ELSE 'Light User'
    END AS User_Category
FROM Netflix_user_analytics;

#Result
SELECT *
FROM user_category
LIMIT 20;

#Q18. Monthly Watch Time Trend 
CREATE VIEW monthly_watch_trend AS
SELECT
    DATE_FORMAT(Watch_Date,'%Y-%m') AS Month,
    SUM(Watch_Time_Minutes) AS Total_Watch_Time
FROM Netflix_user_analytics
GROUP BY DATE_FORMAT(Watch_Date,'%Y-%m');

# Result
SELECT *
FROM monthly_watch_trend
ORDER BY Month;

# Q19. Top 3 Users in Each Country
CREATE VIEW top3_users_each_country AS
SELECT *
FROM
(
    SELECT
        Country,
        User_ID,
        SUM(Watch_Time_Minutes) AS Total_Watch_Time,
        ROW_NUMBER() OVER
        (
            PARTITION BY Country
            ORDER BY SUM(Watch_Time_Minutes) DESC
        ) AS rn
    FROM Netflix_user_analytics
    GROUP BY Country, User_ID
) RankedUsers
WHERE rn <= 3;

# Result
SELECT *
FROM top3_users_each_country
ORDER BY Country, rn;

# Q20. Average Revenue Per User  by Subscription Plan
CREATE VIEW avg_Revenue_subscription_plan AS
SELECT
    Subscription_Plan,
    ROUND(SUM(Monthly_Subscription_Fee) /
    COUNT(DISTINCT User_ID),2) AS ARPU
FROM Netflix_user_analytics
GROUP BY Subscription_Plan;

# Result
SELECT *
FROM avg_Revenue_subscription_plan
ORDER BY ARPU DESC;

#Q21. Which Titles Receive the Highest Average User Ratings?
CREATE VIEW top_rated_titles AS
SELECT
    Title,
    ROUND(AVG(Rating_Given),2) AS Average_Rating
FROM Netflix_user_analytics
GROUP BY Title;

#Result
SELECT *
FROM top_rated_titles
ORDER BY Average_Rating DESC
LIMIT 10;

