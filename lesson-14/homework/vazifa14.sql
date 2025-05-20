 --- Easy Tasks
1. select substring(name, 1, CHARINDEX(',', Name)-1) as fisrt_name, right(name, len(name)-CHARINDEX(',', Name)) as last_name from TestMultipleColumns
 bu yerda CHARINDEX(',', Name)- vergul qayerdaligini izlab topadi va substring yordamida qirqib olamiz, verguldan keyingi sozni topish uchun right dan 
  foydalanib ong tarafdan sozni jami uzunligidan vergulgacha bolgan sozni qirqib olamiz.
2. select * from TestPercent
   where CHARINDEX('%', strs) > 0  -- bu yerda charindex STRS ustunida % bor yoqligina va uning pozitsasini korsatib beradi va where orqali filtirladim.
3. select * from Splitter
   CROSS APPLY STRING_SPLIT(vals, '.')
4. declare @str varchar(100)='1234ABC123456XYZ1234567890ADS'
   select @str as letter,
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(
              REPLACE(
                REPLACE(
                  REPLACE(
                    REPLACE(
                      REPLACE(@str, '0', 'X'), '1', 'X'), '2', 'X'), '3', 'X'), '4', 'X'), 
                      '5', 'X'), '6', 'X'), '7', 'X'), '8', 'X'), '9', 'X') as letter1 
5.select * from testDots
  where len(vals)-len(replace(vals, '.', ''))>2
6. select len(texts)-len(replace(texts, ' ', ''))  
   from CountSpaces
7. select * from Employee as a
   join Employee as b
   on b.Id=a.ManagerId
   where a.Salary>b.Salary
8. select employee_id, first_name, last_name, hire_date,
   DATEDIFF(year, HIRE_DATE, GETDATE()) as work_year  
   from Employees
   WHERE DATEDIFF(YEAR, Hire_Date, GETDATE()) > 10
   AND DATEDIFF(YEAR, Hire_Date, GETDATE()) < 15

  
