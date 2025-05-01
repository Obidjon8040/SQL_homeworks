--Easy-Level Tasks
1. SELECT ProductName AS NAME FROM Products 
2. SELECT * FROM Customers AS CLIENT
3. SELECT ProductName FROM Products
   UNION
  SELECT ProductName FROM Products_Discounted
4. SELECT ProductName FROM Products
   INTERSECT
   SELECT ProductName FROM Products_Discounted
5. SELECT DISTINCT FirstName, Country FROM Customers 
6. SELECT *, CASE WHEN 
             PRICE>1000 THEN 'HIGH'
             ELSE 'LOW'
				 	   END AS PRODUCTS_TURI
             FROM Products
7. SELECT StockQuantity,
                    IIF(StockQuantity > 100, 'yes', 'no') as Stockt_natija 
					          FROM Products_Discounted
--Medium-Level Tasks
8. SELECT ProductName FROM Products
   UNION
   SELECT ProductName FROM Products_Discounted
9. select * from Products
   except
   select * from Products_Discounted
10. select ProductName, price,
                          IIF(Price>1000, 'Expensive', 'Affordable') as Natija
	                  from Products
11. select * from Employees
                  where age<25 and Salary>6000
12. Update Employees 
                set salary=salary*1.10
				        where DepartmentName='HR' 
				        or EmployeeID=5;






