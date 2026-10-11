# 🏠 Airbnb Price, Availability & Customer Reviews Analysis Using SQL

## 📌 Project Overview

This project analyzes Airbnb listing data using **MySQL** to understand pricing, availability, room types, host activity, customer reviews, and neighbourhood-level patterns.

The main purpose of this project is to transform raw Airbnb listing data into **useful business insights** that could help Airbnb hosts, property managers, and business teams understand:

- Which neighbourhoods have the most listings?
- Which areas have the highest prices?
- Which room types are most common?
- Which listings receive the most reviews?
- Which neighbourhoods have high availability?
- Where could there be potential supply problems?
- Which areas offer a good combination of reasonable prices and high customer reviews?

The project contains **20 business questions**, each answered using SQL queries.

---

## 🎯 Project Objective

The objective of this project is to perform an exploratory analysis of Airbnb listings using SQL and identify patterns related to:

1. Listing distribution
2. Neighbourhoods
3. Pricing
4. Room types
5. Customer reviews
6. Host activity
7. Availability
8. Minimum-night requirements
9. Price categories
10. Potential supply opportunities

---

## 🗂️ Dataset Information

The Airbnb dataset contains information about individual Airbnb listings.

### Main Columns

| Column | Description |
|---|---|
| `id` | Unique listing ID |
| `name` | Name of the Airbnb listing |
| `host_id` | Unique host ID |
| `host_name` | Name of the host |
| `neighbourhood_group` | Larger geographical grouping |
| `neighbourhood` | Specific neighbourhood |
| `latitude` | Latitude of the listing |
| `longitude` | Longitude of the listing |
| `room_type` | Type of accommodation |
| `price` | Price of the listing |
| `minimum_nights` | Minimum number of nights required |
| `number_of_reviews` | Total number of reviews |
| `last_review` | Date of the latest review |
| `reviews_per_month` | Average reviews per month |
| `calculated_host_listings_count` | Number of listings managed by the host |
| `availability_365` | Number of days available in a year |

---

# 🛠️ Tools & Technologies

- **MySQL**
- SQL
- MySQL Workbench

### SQL Concepts Used

This project demonstrates practical use of:

- `SELECT`
- `COUNT()`
- `COUNT(DISTINCT)`
- `AVG()`
- `SUM()`
- `GROUP BY`
- `ORDER BY`
- `DESC`
- `ASC`
- `LIMIT`
- `WHERE`
- `HAVING`
- `CASE WHEN`
- Aggregate Functions
- Filtering
- Sorting
- Business-oriented SQL analysis

---

# 📊 Business Questions & Analysis

## Q1. How many total Airbnb listings are there?

### Business Purpose
This gives the total number of Airbnb properties available in the dataset.

### SQL Concept
`COUNT(*)`

### Business Value
Helps understand the overall size of the Airbnb market represented by the dataset.

---

## Q2. How many different neighbourhoods are available?

### Business Purpose
Measures the geographical coverage of the Airbnb listings.

### SQL Concept
`COUNT(DISTINCT neighbourhood)`

### Business Value
Shows how widely Airbnb listings are distributed across different neighbourhoods.

---

## Q3. What is the average price of an Airbnb listing?

### Business Purpose
Determines the overall average listing price.

### SQL Concept
`AVG(price)`

### Business Value
Provides a general benchmark for Airbnb pricing.

---

## Q4. Which neighbourhood has the most Airbnb listings?

### Business Purpose
Identifies the neighbourhoods with the highest concentration of Airbnb properties.

### SQL Concepts
- `GROUP BY`
- `COUNT(*)`
- `ORDER BY`
- `LIMIT`

### Business Value
High listing concentration may indicate areas with strong tourism demand or high host participation.

---

## Q5. Which neighbourhood has the highest average price?

### Business Purpose
Identifies the most expensive neighbourhoods based on average listing price.

### Business Value
This can help identify premium locations where hosts may charge higher prices.

---

## Q6. What are the different room types?

### Business Purpose
Identifies the types of accommodation available and their listing counts.

### Business Value
Helps understand whether the market is dominated by entire homes, private rooms, or other accommodation types.

---

## Q7. What is the average price for each room type?

### Business Purpose
Compares pricing across different accommodation types.

### Business Value
This helps hosts understand how room type affects expected pricing.

---

## Q8. Which room type has the highest number of reviews?

### Business Purpose
Compares customer review activity across room types.

### Business Value
A higher number of reviews can indicate greater customer activity and booking volume, although reviews are not the same as bookings.

---

## Q9. What are the 3 most expensive Airbnb listings?

### Business Purpose
Identifies the highest-priced properties in the dataset.

### SQL Concept
`ORDER BY price DESC LIMIT 3`

### Business Value
Shows the premium end of the Airbnb market.

---

## Q10. What are the 3 cheapest Airbnb listings?

### Business Purpose
Identifies the lowest-priced properties.

### SQL Concept
`ORDER BY price ASC LIMIT 3`

### Business Value
Helps identify budget accommodation options.

---

## Q11. Which hosts have the most Airbnb listings?

### Business Purpose
Identifies hosts managing multiple properties.

### Business Value
This can distinguish individual hosts from large-scale or professional property managers.

---

## Q12. Which listings have the highest number of reviews?

### Business Purpose
Finds the most-reviewed individual properties.

### Business Value
Highly reviewed listings may indicate strong customer engagement and potentially high booking activity.

---

## Q13. What is the average number of reviews for each neighbourhood?

### Business Purpose
Compares customer review activity across neighbourhoods.

### Business Value
Helps identify neighbourhoods where Airbnb listings receive relatively high customer engagement.

---

## Q14. Which neighbourhood has the highest total number of reviews?

### Business Purpose
Measures the total review volume generated by each neighbourhood.

### Business Value
Neighbourhoods with high total reviews may represent active Airbnb markets.

---

## Q15. What is the average minimum-night requirement by room type?

### Business Purpose
Compares the minimum stay requirements for different accommodation types.

### Business Value
This can help understand host booking strategies and how flexible different room types are for customers.

---

## Q16. Which neighbourhood has the highest average availability?

### Business Purpose
Identifies areas where Airbnb properties are available for more days throughout the year.

### Business Value
High availability may indicate lower booking demand, seasonal patterns, or a large supply of properties.

---

## Q17. How many listings are available for more than 300 days?

### Business Purpose
Identifies properties with very high annual availability.

### Business Value
These listings may represent hosts who keep their properties available for most of the year.

---

# 💰 Q18. What is the Price Category of Airbnb Listings?

A `CASE WHEN` statement is used to divide listings into price categories.

### Categories

| Price | Category |
|---:|---|
| < 100 | Budget |
| 101–200 | Mid-range |
| 201–500 | Premium |
| > 500 | Luxury |

### Business Purpose
Instead of analyzing individual prices, listings can be grouped into meaningful pricing segments.

### Business Value
This makes it easier to understand the structure of the Airbnb market and identify which pricing segment contains the most listings.

---

# ⭐ Q19. Which neighbourhood has the best combination of reasonable price and high reviews?

This query looks for neighbourhoods where:

- Average price is below 200
- Average number of reviews is above 50

### SQL Concepts

- `WHERE`
- `GROUP BY`
- `HAVING`
- `AVG()`
- `ORDER BY`

### Business Purpose
Identify neighbourhoods that potentially provide a good balance between affordability and customer engagement.

### Business Value
This could be useful for customers looking for affordable locations and hosts looking for attractive markets.

---

# ⚠️ Q20. Which neighbourhood could have a potential supply problem?

This analysis looks for neighbourhoods where:

- Average availability is above 200 days
- Average reviews are below 50

### Business Logic

High availability + relatively low reviews may indicate that properties are available for many days but are not receiving strong customer engagement.

### Business Value

These neighbourhoods could deserve further investigation because they may have:

- Lower demand
- Excess supply
- Seasonal demand
- Pricing issues
- Location-related challenges

This is a **potential signal**, not proof of a supply problem. Additional booking and occupancy data would be needed to confirm the reason.

---

# 🔍 Key SQL Techniques Demonstrated

## 1. Aggregate Functions

The project uses:

```sql
COUNT()
AVG()
SUM()
```

These functions help summarize large amounts of listing data.

---

## 2. GROUP BY

`GROUP BY` is used to compare Airbnb listings across:

- Neighbourhoods
- Room types
- Hosts
- Price categories

---

## 3. ORDER BY

`ORDER BY` is used to rank results from highest to lowest or lowest to highest.

For example:

```sql
ORDER BY total_listing DESC
```

---

## 4. LIMIT

`LIMIT` is used to return only the most relevant records.

For example:

```sql
LIMIT 5
```

can return the top five neighbourhoods.

---

## 5. WHERE

`WHERE` filters individual rows before aggregation.

Example:

```sql
WHERE price > 0
```

---

## 6. HAVING

`HAVING` filters grouped results after aggregation.

Example:

```sql
HAVING AVG(price) < 200
```

This is particularly useful for business analysis.

---

## 7. CASE WHEN

The project uses `CASE WHEN` to create meaningful price categories.

```sql
CASE
    WHEN price < 100 THEN 'Budget'
    WHEN price BETWEEN 101 AND 200 THEN 'Mid-range'
    WHEN price BETWEEN 201 AND 500 THEN 'Premium'
    ELSE 'Luxury'
END
```

This demonstrates how SQL can transform raw numerical data into useful business segments.

---

# 💡 Business Insights

The analysis can help answer several important business questions:

### Pricing
Understand which neighbourhoods and room types command higher prices.

### Customer Engagement
Identify listings and neighbourhoods with high review activity.

### Market Concentration
Find areas with a large number of Airbnb listings.

### Host Strategy
Identify hosts operating multiple listings.

### Availability
Find neighbourhoods and properties with unusually high availability.

### Market Opportunities
Identify areas where reasonable prices are combined with strong review activity.

### Potential Supply Issues
Highlight areas with high availability but relatively low review activity for further investigation.

---

# 📁 Project Structure

```text
Airbnb-SQL-Analysis/
│
├── Airbnb_SQL_Project.sql
│
└── README.md
```

The `.sql` file contains:

- Database creation
- Table creation
- Data analysis
- 20 business questions
- SQL queries
- Business-oriented analysis

---

# 🎯 Skills Demonstrated

Through this project, I practiced:

- SQL data analysis
- Data aggregation
- Data filtering
- Data grouping
- Data ranking
- Business question formulation
- Customer review analysis
- Pricing analysis
- Availability analysis
- Host analysis
- Conditional logic using `CASE`
- Using `HAVING` for business conditions
- Translating business problems into SQL queries

---

# 🚀 Conclusion

This Airbnb SQL project demonstrates how SQL can be used to move from **raw listing data to business insights**.

Rather than only retrieving data, the project focuses on answering practical questions related to **price, availability, customer reviews, neighbourhoods, room types, and host activity**.

The analysis provides a strong foundation for further work such as creating an **interactive Power BI dashboard** using the results of the SQL analysis.

---

## 👨‍💻 Author

**Zubair Ahmad**

Aspiring Data Analyst | SQL | Excel | Power BI | Python

This project is part of my journey toward becoming a **Data Analyst**.
