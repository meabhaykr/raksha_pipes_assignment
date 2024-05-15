<h1 align="center">Business Analyst Assignment</h1>

This repository contains the Python code to generate fake data and the MySQL database scripts to create the schema for Raksha Pipes.

**Data Generation**

The data generation script is in the `data_generation.py` file. It uses the Faker library to create realistic data for:

* Customers
* Products
* Sales
* Orders (including invoice and order types)
* Payments (including various transaction modes)
* Profit Margins
* Annual Sales
* Customer Feedback

**Database Setup**

The `database_setup.sql` file contains the SQL statements to create the MySQL database schema. It includes tables for:

* `customers` - Stores customer information (ID, name, address, phone, email)
* `products` - Stores product details (ID, type, name, stock, price)
* `sales` - Records sales transactions (ID, customer ID, product ID, quantity, price, discount, total, sale type, order date) (foreign keys reference `customers` and `products`)
* `orders` - Tracks orders (ID, customer ID, product ID, quantity, order date) (foreign keys reference `customers` and `products`)
* `payments` - Records payments (ID, customer ID, product ID, amount, payment date, transaction mode) (foreign keys reference `customers` and `products`)
* `profit_margins` - Tracks product-wise profit margins (product type, total quantity sold, total price, total profit, profit margin)
* `annual_sales` - Records annual sales data by category (Year, Online Sales, In-Store Sales, Phone Order Sales, Wholesale Sales)
* `customer_feedback` - Stores customer feedback information (ID, keyword used in feedback, feedback score)

**How to Use**

1. Install the required Python library:

```bash
pip install faker
```

2. Run the data generation script:

```bash
python data_generation.py
```

This will generate CSV files containing the fake data for each table.

3. Import the CSV files into your MySQL database management tool.

4. Run the `database_setup.sql` script in your MySQL database to create the tables with the specified schema.

**Note:**

This script creates a basic schema for demonstration purposes. You might need to modify it based on your specific requirements.

**Next Steps**

Next Steps of the assignment involves creating a dashboard in Power BI to visualize the data. The corresponding files and instructions will be added in a future commit.
