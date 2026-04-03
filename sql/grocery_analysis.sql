CREATE TABLE grocery_prices (
    date DATE,
    series_title_1 TEXT,
    data_value NUMERIC,
    pct_change NUMERIC
);

SELECT *
FROM grocery_prices
LIMIT 10;

--Counting the  total number of records in the dataset
SELECT COUNT(*) AS total_rows
FROM grocery_prices;

--Get all unique food categories in the dataset
SELECT DISTINCT series_title_1
FROM grocery_prices
ORDER BY series_title_1;

-- Calculate average price index for each food category
SELECT
    series_title_1,
    ROUND(AVG(data_value), 2) AS avg_price_index
FROM grocery_prices
GROUP BY series_title_1
ORDER BY avg_price_index DESC;
-- Insight: Grocery food has the highest average price index,
-- indicating that packaged food items contribute significantly to overall grocery costs.

-- Get the most recent price index values for all categories
SELECT *
FROM grocery_prices
WHERE date = (SELECT MAX(date) FROM grocery_prices);
-- Insight: Grocery food has the highest current price index,
-- indicating it is the largest contributor to present-day grocery costs.
-- Fruit and vegetables, while slightly lower in price index,
-- show higher volatility and growth, contributing to price fluctuations.

-- Rank food categories by latest price index to identify the most expensive category
SELECT
    series_title_1,
    data_value
FROM grocery_prices
WHERE date = (SELECT MAX(date) FROM grocery_prices)
ORDER BY data_value DESC;
/*SQL Insight: Current Price Ranking
The latest data shows that grocery food has the highest price index, followed by meat and beverages.
This indicates that packaged food items are the biggest contributor to current grocery costs.
Although fruit and vegetables have a slightly lower price index, their high volatility 
and growth make them a key driver of price fluctuations.
*/

-- Calculate the average food price index for each year
-- This helps identify long-term price trends over time
SELECT
    EXTRACT(YEAR FROM date) AS year,
    ROUND(AVG(data_value), 2) AS avg_price_index
FROM grocery_prices
GROUP BY year
ORDER BY year;
-- Insight:
-- The yearly average food price index shows a clear long-term upward trend.
-- Food prices were much lower in the 1960s and increased substantially over time,
-- with especially noticeable growth during the 1970s and in later decades.

-- Calculate the average price index for each category by year
-- This helps compare how different food categories change over time
SELECT
    EXTRACT(YEAR FROM date) AS year,
    series_title_1,
    ROUND(AVG(data_value), 2) AS avg_price_index
FROM grocery_prices
GROUP BY year, series_title_1
ORDER BY year, series_title_1;
-- Insight:
-- The yearly category-level analysis shows that each food group follows a different price pattern over time.
-- Meat, poultry and fish show a strong and consistent upward trend across years,
-- with noticeable increases during the 1970s.
-- This indicates long-term price growth in essential protein-based food categories.
-- Comparing categories at this level allows us to identify which food groups contribute most to price increases over time.

-- Calculate month-to-month percentage change using window function
-- This helps track how prices change over time within each category
SELECT
    date,
    series_title_1,
    data_value,
    LAG(data_value) OVER (PARTITION BY series_title_1 ORDER BY date) AS previous_value,
    ROUND(
        (data_value - LAG(data_value) OVER (PARTITION BY series_title_1 ORDER BY date)) 
        / LAG(data_value) OVER (PARTITION BY series_title_1 ORDER BY date) * 100, 2
    ) AS pct_change
FROM grocery_prices;
-- Insight:
-- Month-to-month percentage changes show that fruit and vegetables experience frequent and sharp fluctuations.
-- There are significant positive spikes (e.g., +10%) and negative drops within short periods,
-- indicating high volatility in fresh produce prices.
-- This explains why grocery costs feel unpredictable, as certain categories
-- experience rapid short-term price changes rather than steady growth.

-- Identify category with highest overall growth
SELECT
    series_title_1,
    ROUND(MAX(data_value) - MIN(data_value), 2) AS total_growth
FROM grocery_prices
GROUP BY series_title_1
ORDER BY total_growth DESC;
-- Insight:
-- Meat, poultry and fish show the highest total absolute growth across the dataset,
-- followed by fruit and vegetables.
-- This suggests that meat has experienced the largest long-term increase in index value,
-- while fruit and vegetables also remain a major contributor to rising grocery costs.
-- Together, these results show that both fresh produce and protein categories
-- play a significant role in long-term food price inflation.