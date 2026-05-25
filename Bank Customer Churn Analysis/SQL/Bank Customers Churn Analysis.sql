CREATE DATABASE bank_churn_analysis;
USE bank_churn_analysis;

CREATE TABLE churn_data (
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(20),
    Age INT,
    Tenure INT,
    Balance FLOAT,
    NumOfProducts INT,
    HasCrCard INT,
    IsActiveMember INT,
    EstimatedSalary FLOAT,
    Exited INT
);


SELECT * FROM churn_data
LIMIT 10;

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM churn_data;

-- Total Churned Customers
SELECT COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1;

-- Customer Churn Rate
SELECT 
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percentage
FROM churn_data;

-- Geography-wise Churn Rate
SELECT Geography,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Geography
ORDER BY churn_rate DESC;

-- Gender-wise Churn Rate
SELECT Gender,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Gender;

-- Active Members vs Churn
SELECT IsActiveMember,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY IsActiveMember;

-- Credit Card Holders vs Churn
SELECT HasCrCard,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY HasCrCard;

-- Products vs Churn
SELECT NumOfProducts,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY NumOfProducts
ORDER BY churn_rate DESC;

-- Average Salary by Churn
SELECT Exited,
       ROUND(AVG(EstimatedSalary), 2) AS avg_salary
FROM churn_data
GROUP BY Exited;

-- Age Group Analysis
SELECT 
    CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Middle Age'
        ELSE 'Senior'
    END AS age_group,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY age_group;

-- Top Risk Customer Segment
SELECT Geography,
       Gender,
       ROUND(AVG(Exited) * 100, 2) AS churn_rate
FROM churn_data
GROUP BY Geography, Gender
ORDER BY churn_rate DESC;

-- High Balance Customers Who Churned
SELECT *
FROM churn_data
WHERE Balance > 100000
AND Exited = 1;

-- Customers with Low Products and High Churn
SELECT NumOfProducts,
       COUNT(*) AS total_customers,
       SUM(Exited) AS churned_customers
FROM churn_data
GROUP BY NumOfProducts;


-- Final Business KPI Query
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)
    AS churned_customers,
    ROUND(AVG(Balance),2) AS avg_balance,
    ROUND(AVG(EstimatedSalary),2) AS avg_salary
FROM churn_data;


