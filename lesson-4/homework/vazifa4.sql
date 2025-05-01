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
--Medium-Level Tasks
11. Select top 10 * from Products   -- top 10 - 10 maxsulotni chiqarib beradi bizga, 
    order by price desc             --Order by Price Desc bu Price ustunini kamayish tartibida tartiblaydi.
12. Select coalesce(FirstName, Lastname) as Fulname from Employees   -- Fulname bu coalesce da xosil blgan natijani ko`rsatadigan yangi ustun nomi
13. Select distinct Category, Price from Products
14. select * from Employees
    where (age between 30 and 40) or (Departmentname='Marketing') ---age between 30 and 40 - yoshi 30 dan 40 oraligidagi barcha xodimlar chiqadi. Departmentname='Marketing' - yoshidan qattiy nazar marketing bo‘limidagi barcha xodimlar chiqadi 
15. select * from Employees
    order by salary desc                        -- order by salary desc - salary ustunini kamayish tartibida tartiblaydi
    offset 11 rows fetch next 20 rows only      --  offset 11 rows fetch next 20 rows only  - fetch next 20 rows only - bu keyingi 20 ta yozuvni chiqaradi
16. select * from Products
    where Price<=1000 and StockQuantity>50       -- where Price<=1000 and StockQuantity>50  shu malumot boyicha filtirlaydi va
    order by StockQuantity asc                   --order by StockQuantity asc o`sish tartibida tartiblaydi
17. select * from Products
    where ProductName like '%e%'
18. select * from Employees
    where DepartmentName in('HR', 'IT', 'Finance')
19. select * from Customers
    order by city asc, PostalCode desc










