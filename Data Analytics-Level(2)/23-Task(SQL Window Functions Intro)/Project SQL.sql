Create database sql_project;

use sql_project;

Create table factinternetsales
(
ProductKey int,
OrderDateKey double,
DueDateKey double,
ShipDateKey double,
CustomerKey double,
PromotionKey int,
CurrencyKey int,
SalesTerritoryKey int,
SalesOrderNumber Varchar(25),
SalesOrderLineNumber int,
RevisionNumber int,
OrderQuantity int,
UnitPrice double,
ExtendedAmount double,
UnitPriceDiscountPct int,
DiscountAmount int,
ProductStandardCost double,
TotalProductCost double,
SalesAmount Double,
TaxAmt double,
Freight double,
OrderDate double,
DueDate double,
ShipDate double
);

select * from factinternetsales;

set global local_infile = 1;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/FactInternetSales.csv'
INTO TABLE factinternetsales
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

select * from factinternetsales;

Create table factinternetsalesNew
(
ProductKey int,
OrderDateKey double,
DueDateKey double,
ShipDateKey double,
CustomerKey double,
PromotionKey int,
CurrencyKey int,
SalesTerritoryKey int,
SalesOrderNumber Varchar(25),
SalesOrderLineNumber int,
RevisionNumber int,
OrderQuantity int,
UnitPrice double,
ExtendedAmount double,
UnitPriceDiscountPct int,
DiscountAmount int,
ProductStandardCost double,
TotalProductCost double,
SalesAmount Double,
TaxAmt double,
Freight double,
OrderDate double,
DueDate double,
ShipDate double
);

select * from factinternetsalesNew;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Fact_Internet_Sales_New.csv'
INTO TABLE factinternetsalesNew
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

select * from factinternetsalesNew;

drop table dimcustomer;
create table dimcustomer
(		
CustomerKey int,
GeographyKey int,
CustomerAlternateKey varchar(20),
FirstName varchar(30),
LastName varchar(20),
NameStyle varchar(15),
BirthDate int,
MaritalStatus Varchar(5),
Gender varchar(5),
EmailAddress Varchar(45),
YearlyIncome double,
TotalChildren int,
NumberChildrenAtHome int,
EnglishEducation varchar(25),
EnglishOccupation varchar(45),
HouseOwnerFlag int,
NumberCarsOwned int,
AddressLine1 varchar(40),
Phone varchar(20),
DateFirstPurchase date,
CommuteDistance Varchar(20)
);

alter table dimcustomer
convert to character set utf8mb4;

Select * from dimcustomer;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Dimcustomer.csv'
INTO TABLE dimcustomer
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

drop table dimdate;

Create table dimdate (
DateKey int,
FullDateAlternateKey date,
DayNumberOfWeek int,
EnglishDayNameOfWeek varchar(15),
DayNumberOfMonth int,
DayNumberOfYear int,
WeekNumberOfYear int,
EnglishMonthName varchar(15),
MonthNumberOfYear int,
CalendarQuarter int,
CalendarYear int,
CalendarSemester int,
FiscalQuarter int,
FiscalYear int,
FiscalSemester int
);

select * from dimdate;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DimDate.csv'
INTO TABLE dimdate
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

drop table dimproduct;

Create table dimproduct
(
ProductKey int,
Unit_price double,
ProductAlternateKey varchar(30),
ProductSubcategoryKey int,
EnglishProductName varchar(50),
StandardCost double,
Color varchar(20),
ListPrice double,
ProductLine varchar(10),
DealerPrice double,
ModelName varchar(40),
EnglishDescription varchar(250),
StartDate date
);

select * from dimproduct;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DimProduct.csv'
INTO TABLE dimproduct
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

Create table appendedFactSales
(
ProductKey int,
OrderDateKey double,
DueDateKey double,
ShipDateKey double,
CustomerKey double,
PromotionKey int,
CurrencyKey int,
SalesTerritoryKey int,
SalesOrderNumber Varchar(25),
SalesOrderLineNumber int,
RevisionNumber int,
OrderQuantity int,
UnitPrice double,
ExtendedAmount double,
UnitPriceDiscountPct int,
DiscountAmount int,
ProductStandardCost double,
TotalProductCost double,
SalesAmount Double,
TaxAmt double,
Freight double,
OrderDate double,
DueDate double,
ShipDate double
);

select * from appendedFactSales;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/AppendedFactTable.csv'
INTO TABLE appendedFactSales
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

create table dimSalesTerritory
(
SalesTerritoryKey int,
SalesTerritoryAlternateKey int,
SalesTerritoryRegion varchar(20),
SalesTerritoryCountry varchar(20),
SalesTerritoryGroup varchar(20)
);

select * from dimsalesterritory;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DimSalesTerritory.csv'
INTO TABLE dimsalesterritory
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

create table DimProdSubCategory
(
ProductSubcategoryKey int,
ProductSubcategoryAlternateKey int,
EnglishProductSubcategoryName varchar(25),
ProductCategoryKey int,
EnglishProductCategoryName varchar(20)
);

select * from dimprodsubcategory;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DimProdSubCategory.csv'
INTO TABLE DimProdSubCategory
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

create table DimProdCategory
(
ProductCategoryKey int,
ProductCategoryAlternateKey int,
EnglishProductCategoryName varchar(20)
);

select * from dimprodcategory;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/DimProdCategory.csv'
INTO TABLE DimProdCategory
FIELDS TERMINATED BY ','
enclosed by'"'
IGNORE 1 LINES;

select * from dimprodcategory;

Select * from factinternetsales
union
select * from factinternetsalesnew;

-- Sum of total sales amount
Select round(sum(salesamount),2) as Total_Sales
From appendedfactsales;

-- Sum of TotalProductCost
Select round(sum(TotalProductCost),2) as Total_Sales
From appendedfactsales;

-- Total Orders
Select count(SalesOrderNumber) as Total_orders
from appendedfactsales;

-- Total Distinct orders
Select count(Distinct SalesOrderNumber) as Total_orders
from appendedfactsales;

-- Total customers
Select count(distinct customerkey) as Total_Customers
from appendedfactsales;

select * from dimdate;
select * from appendedfactsales;

-- Year Wise Sales
Select d.CalendarYear as Year,
Round(sum(a.SalesAmount),2) as Sales
from appendedfactsales as a
Join dimdate as d
on a.OrderDateKey=d.DateKey
group by d.CalendarYear
order by d.CalendarYear;

-- Quarter wise sales
Select d.CalendarQuarter as Quarter,
Round(sum(a.SalesAmount),2) as Sales
from appendedfactsales as a
Join dimdate as d
on a.OrderDateKey=d.DateKey
group by d.CalendarQuarter
order by d.CalendarQuarter;

-- Territory region  wise sales
Select t.SalesTerritoryRegion as Territory_Region,
Round(sum(a.SalesAmount),2) as Sales
from appendedfactsales as a
Join dimsalesterritory as t
on a.SalesTerritoryKey=t.SalesTerritoryKey
group by t.SalesTerritoryRegion
order by t.SalesTerritoryRegion;

-- product sub category wise sales
select ps.EnglishProductSubcategoryName as Product_Sub_Category,
round(sum(a.SalesAmount),2) as sales
from appendedfactsales as a
join dimproduct as p
on a.ProductKey=p.ProductKey
join dimprodsubcategory as ps
on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
group by ps.EnglishProductSubcategoryName;

-- product category wise sales
select pc.EnglishProductCategoryName as Product_Category,
round(sum(a.SalesAmount),2) as sales
from appendedfactsales as a
join dimproduct as p
on a.ProductKey=p.ProductKey
join dimprodsubcategory as ps
on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
join dimprodcategory as pc
on ps.ProductCategoryKey=pc.ProductCategoryKey
group by pc.EnglishProductCategoryName;

-- 13/3/2026
-- Average Order Value(AOV)
Select round(sum(SalesAmount)/count(distinct SalesOrderNumber), 2) as Avg_Order_Value
from appendedfactsales;

-- Profit Margin %
select round((sum(SalesAmount - TotalProductCost) / sum(SalesAmount))* 100,2) as Profit_Margin_Percentage
from appendedfactsales;

-- Total Quantity Sold
Select sum(OrderQuantity) as Total_Products_Sold
From appendedfactsales;

-- Average Selling Price
SELECT 
ROUND(AVG(UnitPrice),2) AS Avg_Selling_Price
FROM appendedfactsales;

-- Top Selling Product (10 Products)
SELECT 
p.EnglishProductName,
SUM(f.SalesAmount) AS Sales
FROM appendedfactsales f
JOIN dimproduct p
ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY Sales DESC
LIMIT 10;

-- Sales by Country
SELECT 
t.SalesTerritoryCountry,
Round(SUM(f.SalesAmount), 2) AS Sales
FROM appendedfactsales f
JOIN dimsalesterritory t
ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryCountry
order by Sales desc;

-- Sales by Gender
SELECT 
c.Gender,
round(SUM(f.SalesAmount), 2) AS Sales
FROM appendedfactsales f
JOIN dimcustomer c
ON f.CustomerKey = c.CustomerKey
GROUP BY c.Gender;

-- Sales By Age Group
SELECT 
CASE
WHEN YearlyIncome < 40000 THEN 'Low Income'
WHEN YearlyIncome BETWEEN 40000 AND 80000 THEN 'Middle Income'
ELSE 'High Income'
END AS Income_Group,
ROUND(SUM(f.SalesAmount), 2) AS Sales
FROM appendedfactsales f
JOIN dimcustomer c
ON f.CustomerKey = c.CustomerKey
GROUP BY Income_Group;

-- Best Sales Month
Select
d.EnglishMonthName,
ROUND(SUM(f.SalesAmount), 2) AS Sales
FROM appendedfactsales f
JOIN dimdate d
ON f.OrderDateKey = d.DateKey
GROUP BY d.MonthNumberOfYear, d.EnglishMonthName
ORDER BY Sales DESC;

-- Revenue Per Customer
SELECT 
ROUND(SUM(SalesAmount)/COUNT(DISTINCT CustomerKey),2) AS Revenue_Per_Customer
FROM appendedfactsales;


