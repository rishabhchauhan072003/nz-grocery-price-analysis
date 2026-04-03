# NZ Grocery Price Analysis

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

- Grocery food shows the highest overall price index, indicating strong long-term inflation pressure in packaged food items.

- Fruit and vegetables exhibit higher short-term fluctuations, making them more volatile compared to other categories. This explains why consumers often feel price changes more strongly in these items.

- Meat, poultry, and fish demonstrate significant long-term growth, suggesting that protein-based food categories contribute heavily to rising grocery costs.

- Categories with frequent fluctuations can impact consumer perception of price increases more than categories with steady growth.

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
