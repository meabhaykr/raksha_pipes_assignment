<h1 align="center">Raksha Pipes - Business Analyst Assignment</h1>

<p align="center">
    <img src="https://github.com/meabhaykr/raksha_pipes_assignment/blob/main/Raksha%20Pipes%20logo.png" alt="Raksha Pipes logo.png">
</p>

## Overview

This repository contains the data management and visualization system built for Raksha Pipes. The system utilizes Python for data generation, MySQL for data storage, and Power BI for dashboard creation.

## Table of Contents

- [Data Generation](#data-generation)
- [Database Setup](#database-setup)
- [Power BI Dashboard](#power-bi-dashboard)
- [How to Use](#how-to-use)
- [Further Customization](#further-customization)

## Data Generation

The `data_generation.py` file is used to generate realistic data using the Faker library. It creates data for the following entities:

- Customers
- Products
- Sales
- Orders (including invoice and order types)
- Payments (including various transaction modes)
- Profit Margins
- Annual Sales
- Customer Feedback

You can access the data generation script here: [Python Notebook](https://colab.research.google.com/drive/1WGTBhEkCoTkjPkNWfFH02tACwzA22yGy?usp=sharing).

## Database Setup

The `database_setup.sql` file contains SQL statements to create the MySQL database schema, which includes tables for:

- `customers` - Stores customer information (ID, name, address, phone, email)
- `products` - Stores product details (ID, type, name, stock, price)
- `sales` - Records sales transactions (ID, customer ID, product ID, quantity, price, discount, total, sale type, order date) (foreign keys reference `customers` and `products`)
- `orders` - Tracks orders (ID, customer ID, product ID, quantity, order date) (foreign keys reference `customers` and `products`)
- `payments` - Records payments (ID, customer ID, product ID, amount, payment date, transaction mode) (foreign keys reference `customers` and `products`)
- `profit_margins` - Tracks product-wise profit margins (product type, total quantity sold, total price, total profit, profit margin)
- `annual_sales` - Records annual sales data by category (year, online sales, in-store sales, phone order sales, wholesale sales)
- `customer_feedback` - Stores customer feedback information (ID, keyword used in feedback, feedback score)

<p align="center">
    <img src="https://github.com/meabhaykr/raksha_pipes_assignment/blob/main/Schema.png" alt="Schema.png">
</p>


## Power BI Dashboard

The Power BI dashboard connects to the MySQL database and presents key performance indicators (KPIs) and insights:

### KPIs:

- Total Sale
- Total Profit
- Feedback Score

### Insights:

- Product Availability (stock levels)
- Profit Margin (by product type)
- Monthly Sales Trends
- Payment Mode Distribution
- Cost of Product Categories
- Customer Feedback Graph (visualizing feedback keywords and scores)

The interactive dashboard allows users to filter data by date range, product category, and more. This empowers Raksha Pipes to track sales performance, profitability, and customer behavior, enabling data-driven decisions to optimize operations and marketing strategies.

<p align="center">
    <img src="https://github.com/meabhaykr/raksha_pipes_assignment/blob/main/Power%20Bi%20Dashboard%20Image.png" alt="Power BI Dashboard Image">
</p>

## How to Use

1. **Install the required Python library:**

    ```bash
    pip install faker pandas mysql-connector-python
    ```

2. **Run the data generation script:**

    ```bash
    python data_generation.py
    ```

    This will generate CSV files containing the fake data for each table.

3. **Import the CSV files into your MySQL database management tool.**

4. **Run the `database_setup.sql` script in your MySQL database to create the tables with the specified schema.**

5. **Open Power BI Desktop and connect to the MySQL database:**

    - Go to "Get Data" and select "Database."
    - Choose "MySQL" and provide your database connection details.
    - Select the tables you want to import (all eight in this case).

6. **Customize and explore the Power BI dashboard using the provided file.**

## Further Customization

The Power BI dashboard can be customized to include additional metrics and visualizations based on Raksha Pipes' evolving needs. Feel free to modify the Power BI report to better suit your specific requirements.

## Documentation and Assignment Link

For detailed documentation and the assignment link, visit: [Raksha Pipe Assignment](https://drive.google.com/drive/folders/1o13pcNEo71kAT0p7O1KSnyz47NvZMwuw?usp=sharing).

---

**Author:** Abhay Kumar  
**Email:** meabhaykr@gmail.com  
**GitHub:** [meabhaykr](https://github.com/meabhaykr)
