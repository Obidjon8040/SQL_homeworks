 
1. select CONCAT(employee_id, '-', first_name, ' ', last_name) as full_name from Employees 
2. select REPLACE(phone_number, '124', '999') from Employees
3. select firstname, LEN(Firstname) as Name_len from Employees
   where FIRSTNAME like 'A%' OR FIRSTNAME like 'J%' OR FIRSTNAME like 'M%'
   order by firstname
4. select concat(firstname,' ', lastname) as full_name, sum(salary) as total_salary from Employees
   group by concat(firstname,' ', lastname) 
5. select year1, CASE 
        WHEN Max1 >= Max2 AND Max1 >= Max3 THEN Max1
        WHEN Max2 >= Max1 AND Max2 >= Max3 THEN Max2
        ELSE Max3
    END AS MaxValue
   FROM TestMax
6. select * from cinema
   where id % 2=1 and description<>'boring'
7. select * from SingleOrder
   ORDER BY (CASE WHEN Id = 0 THEN 1 ELSE 0 END), Id;
8. select coalesce(ssn, passportid, itin) as result from person
--Medium Tasks
1. select studentid, 
               substring(fullname, 1, CHARINDEX(' ', FullName)) as firstname,
               substring(fullname, CHARINDEX(' ', fullname)+1, CHARINDEX(' ', fullname, CHARINDEX(' ', fullname)+1)-CHARINDEX(' ', FullName)-1) as middlename,
               right(fullname, len(fullname)-CHARINDEX(' ', fullname, CHARINDEX(' ', fullname)+1)) as lastname, Grade
   from Students
2. SELECT * FROM Orders
    WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders
    WHERE DeliveryState = 'ca')
    AND DeliveryState = 'tx'
3. select STRING_AGG(string, ' ') as result from DMLTable
4. select concat(firstname, ' ', lastname) as fullname from Employees
   where concat(firstname, ' ', lastname) like '%a%a%a%'
5. select departmentname, COUNT(*) as totatemployees, 
                          sum(case when datediff(year, HIREDATE, GETDATE())>3 then 1 else 0 end) as years3, 
					                     cast(100.0 * sum(case when datediff(year, HIREDATE, GETDATE())>3 then 1 else 0 end) / COUNT(*) as Decimal(5,2)) as percent3years
			from Employees 
   group by departmentname
6. select  * from Personal
    where missioncount=(select max(missioncount) from Personal)

--Difficult Tasks

















