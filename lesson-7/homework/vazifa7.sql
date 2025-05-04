-- Easy-Level Tasks
1. select min(price) as min_price from Products
2. select MIn(salary) as min_salary from Employees
3. select count(customerID) as Total_rows from Customers
4. select count(distinct Category) as total_category from Products
5. select sum(saleamount) as total_sales from Sales
   where productid=7
6. select AVG(age) as avg_age from Employees
7. select departmentname, COUNT(EmployeeID) as total_dep_Emp from Employees
   group by departmentname
8. select Category, Max(price) as max_price_pro, min(price) as min_price_pro from Products
   group by Category
9. select CustomerID, sum(SALEAMOUNT) as Total_amount from Sales
   group by CustomerID
10. select DepartmentName, count(Employeeid) as Total_Emp from Employees
    group by DepartmentName
    having count(Employeeid)>5
--Medium-Level Tasks
11. select ProductID, Sum(Saleamount) as Total_Amount, AVG(Saleamount) as Avg_amount from Sales
    group by ProductID
12. select DepartmentName, Count(EmployeeID) as Total_Employee from Employees
    group by DepartmentName
13. select DepartmentName, max(salary) as Max_salary, min(salary) as min_salary from Employees
    group by DepartmentName
14. select DepartmentName, avg(salary) as Avg_salary from Employees
    group by DepartmentName
15. select DepartmentName, count(EmployeeID) as total_emp, Avg(salary) as avg_salary from Employees
    group by departmentname
16. select Category, Avg(price) as avg_price from Products
    group by Category
    having Avg(price)>400
17. select year(SaleDate) as Sale_year, Sum(saleamount) as Total_Sale from  Sales
    group by Year(SaleDate)
18. select CustomerID, Count(productID) as Total_product from Sales
    group by CustomerID
    having Count(productID)>3
19. select DepartmentName, avg(salary) as avg_salary from Employees
    group by DepartmentName
    HAVING avg(salary)>60000
--- Hard-Level Tasks
20. select Category, avg(price) as avg_price from Products
    group by category
    having avg(price)>150.
21. select CustomerID, sum(saleamount) as total_sale from Sales
    group by CustomerID
    having sum(saleamount)>1500
22. SELECT CustomerID,
       SUM(CASE WHEN SaleAmount > 50 THEN SaleAmount ELSE 0 END) AS TotalSales50,
       MIN(SaleAmount) AS Min_sales
    FROM Sales
    GROUP BY CustomerID;
















