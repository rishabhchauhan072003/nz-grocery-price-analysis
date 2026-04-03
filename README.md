# NZ Grocery Price Analysis
This project demonstrates an end-to-end data analysis workflow, from data cleaning and SQL-based analysis to interactive dashboard development for business insights.
## Dashboard Preview
<img width="1165" height="684" alt="dashboard_preview" src="https://github.com/user-attachments/assets/d76ab591-1bef-4673-bfa0-d42f67ea1344" />



This project demonstrates...

## Problem Statement

Grocery prices in New Zealand have been increasing over time, but it is not always clear which food categories are contributing the most to this rise and how price changes vary across categories.

This project analyses historical grocery price data to identify long-term trends, short-term fluctuations, and key drivers of price changes across different food categories.

---

## Tools & Technologies

- Python (Pandas, NumPy, Matplotlib, Seaborn)
- SQL (PostgreSQL)
- Power BI
- Excel

---

## Project Workflow

1. Data Collection  
   - Used New Zealand food price index dataset  

2. Data Cleaning & Exploration (Python)  
   - Cleaned missing values  
   - Converted date formats  
   - Performed exploratory data analysis (EDA)  

3. Data Analysis (SQL)  
   - Aggregations to calculate average price index by category  
   - Ranking categories based on latest price values  
   - Yearly trend analysis  
   - Month-to-month change using window functions (LAG)  

4. Data Visualisation (Power BI)  
   - Line chart for price trends over time  
   - Bar chart for category comparison  
   - KPI card for latest price index  
   - Slicers for category and date filtering  

---

## Key Insights

- Grocery food shows the highest sustained price index, indicating long-term inflation pressure in packaged food items rather than short-term fluctuations.

- Fruit and vegetables exhibit higher volatility, meaning frequent price swings. This contributes more to consumer perception of rising grocery costs compared to steady categories.

- Meat, poultry, and fish demonstrate strong long-term growth, suggesting that protein-based food categories are key drivers of overall grocery inflation.

- Categories with high volatility impact household budgeting more significantly, even if their average price index is lower than other categories.

---

## Project Structure

nz-grocery-price-analysis/
│
├── data/              # Raw and cleaned datasets  
├── notebooks/         # Python EDA and data cleaning  
├── sql/               # SQL analysis queries  
├── dashboard/         # Power BI dashboard  
├── README.md  

---

## How to Use

1. Open the notebook in the notebooks folder to view data cleaning and EDA steps  
2. Run SQL queries from the sql folder in PostgreSQL  
3. Open the Power BI file to explore the dashboard and insights  

---

## Future Improvements

- Add rolling average analysis to smooth short-term fluctuations  
- Perform forecasting to predict future grocery price trends  
- Include regional analysis if location-based data becomes available  
- Build a more advanced dashboard with growth and volatility comparison  
