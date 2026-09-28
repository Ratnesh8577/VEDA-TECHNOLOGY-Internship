# Northwind Database – MySQL

A lightweight **Northwind relational database project built with MySQL**. The project contains customer, employee, supplier, product, category, shipping, order, and order-detail data, with primary keys and foreign-key relationships between the tables.

## 📌 Project Overview

The **Northwind database** represents a fictional company that sells food and beverage products to customers around the world.

This project is designed for practicing:

* SQL querying
* Relational database concepts
* Primary and foreign keys
* JOIN operations
* Aggregations and GROUP BY
* Sales and order analysis
* Customer and product analysis
* Supplier and category analysis
* Business intelligence and reporting

## 🗂️ Project Files

| File                      | Description                                                        |
| ------------------------- | ------------------------------------------------------------------ |
| `nw_schema.sql`           | Creates the Northwind database schema and tables                   |
| `nw_data.sql`             | Inserts data into the main tables                                  |
| `nw_orderdetail_data.sql` | Inserts order-detail records                                       |
| `add_regions.sql`         | Adds regional values to Customer, SalesOrder, and Supplier records |
| `nw_diagram.png`          | Entity Relationship Diagram (ERD)                                  |
| `nw.mwb`                  | MySQL Workbench database model                                     |
| `README.md`               | Project documentation                                              |

## 🏗️ Database Schema

The database contains the following tables:

* **Category** – Product categories and descriptions
* **Product** – Product information, pricing, stock, suppliers, and categories
* **Supplier** – Supplier and contact information
* **Customer** – Customer and company information
* **Employee** – Employee and reporting information
* **Shipper** – Shipping company information
* **SalesOrder** – Order-level information
* **OrderDetail** – Individual products included in each order

The database uses **InnoDB** and defines foreign-key relationships between related tables.

## 🔗 Key Relationships

```text
Category
   │
   └── Product
          │
          ├── Supplier
          │
          └── OrderDetail
                    │
                    └── SalesOrder
                           ├── Customer
                           ├── Employee
                           └── Shipper
```

### Important Foreign Keys

* `Product.CategoryID` → `Category.CategoryID`
* `Product.SupplierID` → `Supplier.SupplierID`
* `SalesOrder.CustomerID` → `Customer.CustomerID`
* `SalesOrder.EmployeeID` → `Employee.EmployeeID`
* `SalesOrder.ShipVia` → `Shipper.ShipperID`
* `OrderDetail.OrderID` → `SalesOrder.OrderID`
* `OrderDetail.ProductID` → `Product.ProductID`

The `OrderDetail` table uses a composite primary key consisting of `OrderID` and `DetailID`.

## 📊 Main Data Areas

### Products

Product records contain:

* Product name
* Supplier
* Category
* Quantity per unit
* Unit price
* Units in stock
* Units on order
* Reorder level
* Discontinued status

### Customers

Customer information includes:

* Company
* Contact person
* Contact title
* Address
* City
* Region
* Country
* Phone
* Fax

### Orders

Sales orders contain:

* Customer
* Employee
* Order date
* Required date
* Shipped date
* Shipper
* Freight
* Shipping address
* Shipping region

### Order Details

Each order-detail record contains:

* Order ID
* Detail ID
* Product ID
* Unit price
* Quantity
* Discount

## 🌍 Regional Data

The `add_regions.sql` script adds regional information based on country.

Examples:

* UK and Ireland → British Isles
* USA and Canada → North America
* Mexico → Central America
* Argentina, Brazil, and Venezuela → South America
* Germany, France, Belgium, Switzerland, and Austria → Western Europe
* Norway and Finland → Scandinavia
* Japan → Eastern Asia
* Singapore → South-East Asia
* Netherlands → Northern Europe

These regional updates are applied to the **Customer**, **SalesOrder**, and **Supplier** tables.

## 🛠️ Technologies Used

* **MySQL**
* **SQL**
* **MySQL Workbench**
* **InnoDB**
* **Relational Database Design**

## 🚀 How to Run the Project

### 1. Create the Database Schema

Open MySQL Workbench or the MySQL command line and run:

```sql
SOURCE nw_schema.sql;
```

### 2. Insert the Main Data

```sql
SOURCE nw_data.sql;
```

### 3. Insert Order-Detail Data

```sql
SOURCE nw_orderdetail_data.sql;
```

### 4. Add Regional Information

```sql
SOURCE add_regions.sql;
```

After running all four scripts, the Northwind database will be ready for SQL analysis.

## 🔍 Example SQL Queries

### View All Products

```sql
SELECT *
FROM product;
```

### Products with Category Names

```sql
SELECT
    p.ProductName,
    c.CategoryName,
    p.UnitPrice
FROM product p
JOIN category c
    ON p.CategoryID = c.CategoryID;
```

### Order Details with Product Information

```sql
SELECT
    od.OrderID,
    p.ProductName,
    od.UnitPrice,
    od.Quantity,
    od.Discount
FROM orderdetail od
JOIN product p
    ON od.ProductID = p.ProductID;
```

### Orders by Customer

```sql
SELECT
    c.CompanyName,
    COUNT(so.OrderID) AS TotalOrders
FROM customer c
JOIN salesorder so
    ON c.CustomerID = so.CustomerID
GROUP BY c.CompanyName
ORDER BY TotalOrders DESC;
```

### Sales Value by Product

```sql
SELECT
    p.ProductName,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS SalesValue
FROM orderdetail od
JOIN product p
    ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY SalesValue DESC;
```

## 📈 Possible Business Analysis

This database can be used to analyze:

* Top-selling products
* Sales by product category
* Top customers by order volume
* Orders by country and region
* Employee order performance
* Supplier performance
* Product inventory levels
* Average order value
* Discount impact on sales
* Regional sales trends
* Products requiring reorder

## 🧠 SQL Skills Demonstrated

This project provides practice with:

```text
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
DISTINCT
INNER JOIN
LEFT JOIN
Subqueries
Aggregate Functions
CASE Statements
Date Functions
String Functions
CTEs
Window Functions
```

## 📌 Database Design Notes

This Northwind version differs from some other Northwind implementations. It:

* Uses renamed tables
* Removes pictures from Category and Employee
* Gives `OrderDetail` a new primary-key structure
* Uses the InnoDB storage engine
* Declares foreign-key relationships
* Includes updated dates for SalesOrder and Employee data
* Provides a script for adding regional values

## 📷 ER Diagram

The project includes an Entity Relationship Diagram showing the relationships between:

**Category → Product → OrderDetail → SalesOrder → Customer / Employee / Shipper**

and

**Supplier → Product**

The ER diagram is available in the repository as:

`nw_diagram.png`

## 🎯 Project Purpose

The primary purpose of this project is to build practical **SQL and relational database skills** using a structured business dataset.

The project can also be used as a portfolio project for:

* **Data Analyst**
* **Business Analyst**
* **SQL Developer**
* **Business Intelligence**
* **Power BI / Data Analytics**

## 📚 Data Source

The data comes from the **Northwind MySQL dataset**.

The regional update script is adapted from the `northwind-SQLite3` project.

## 👤 Author

**Ratnesh Chauhan**

**Focus:** Data Analytics | SQL | Business Intelligence | Power BI

**GitHub:**
https://github.com/Ratnesh8577

**LinkedIn:**
https://www.linkedin.com/in/ratnesh-chauhan-41a113279/

---

⭐ **If you find this project useful, feel free to explore the repository and connect with me on GitHub or LinkedIn.**
