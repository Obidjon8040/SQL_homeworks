            --Easy-Level Tasks
1.  select top 5 EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country from Employees
    order by age desc  -- bu yurda Employees jadvalidan  top 5 da malumotlarni olib korsatadi. top asosan Order by bilan qoshib ishlatiladi yani milos uchun
    select top 5 EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country from Employees
    order by age   Desc kattadan kichikka qarab sartirovkalanadi
2. Select distinct CategoryName from Products -- distinct bu jadvalda bir xil nom bilan takrorlangan malumotlarni faqat faqat birini olib nechta turi borligini ko`rsatadi.
3. Select * from Products where price>100 
4. Select * from Employees 
   where FirstName like 'A%' birinchi harfi A bilan boshlangan ishchilar nomlari kelib chiqadi
5. CREATE TABLE PRODUCTS (
                           ProductID int primary key, 
                           ProductName varchar(50), 
                           Price Decimal(10,2))
 Insert into PRODUCTS values (1, 'Apple', '1200.01')
 Insert into PRODUCTS values (2, 'banana', '1300.01')
 Insert into PRODUCTS values (3, 'percik', '1.0')
 Select * from PRODUCTS	
 Order by Price ASC 
6. Select * from Employees
   Where salary>=60000 and Department='HR'
7.select *, isnull(email, 'noemail@example.com') as email1 from Employees
8. select * from Products
  where price between 50 and 100 
9.select distinct Category, ProductName from Products
10. select distinct Category, ProductName from Products
    order by ProductName desc
