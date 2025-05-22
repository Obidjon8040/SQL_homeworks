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
---Medium Tasks
1. 
DECLARE @str VARCHAR(100) = 'rtcfvty34redt'
DECLARE @i INT = 1
DECLARE @len INT = LEN(@str)
DECLARE @char CHAR(1)
DECLARE @DigitsOnly VARCHAR(100) = ''
DECLARE @CharsOnly VARCHAR(100) = ''
WHILE @i <= @len
BEGIN
    SET @char = SUBSTRING(@str, @i, 1)
    -- Agar belgi raqam bo‘lsa (ASCII 48-57 oralig‘ida)
    IF ASCII(@char) BETWEEN 48 AND 57
        SET @DigitsOnly += @char
    ELSE
        SET @CharsOnly += @char
        SET @i += 1
    END
-- Javobi 
SELECT @CharsOnly AS Letters, @DigitsOnly AS Digits;
2.   select b.id, b.RecordDate, b.Temperature from weather as b
     join weather as k
     on datediff(day, k.recordDate, b.recordDate)=1
     where b.Temperature>k.Temperature
3. select player_id, min(event_date) as first_day  from Activity
   group by player_id
4. SELECT
    SUBSTRING(
        fruit_list,
        CHARINDEX(',', fruit_list, CHARINDEX(',', fruit_list) + 1) + 1,
	      	CHARINDEX(',', fruit_list, CHARINDEX(',', fruit_list, CHARINDEX(',', fruit_list) + 1) + 1)
        - CHARINDEX(',', fruit_list, CHARINDEX(',', fruit_list) + 1) - 1
    ) AS third_item
   FROM fruits;
5. DECLARE @str VARCHAR(100) = 'sdgfhsdgfhs@121313131';

-- 1 dan string uzunligigacha raqamlar ketma-ketligini hosil qilamiz
WITH Numbers AS (
    SELECT TOP (LEN(@str)) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects) -- katta jadvaldan foydalanamiz,
SELECT 
    SUBSTRING(@str, n, 1) AS Character
FROM Numbers
6. select p1.id, case
                 when p1.code=0 then p2.code 
                 else p1.code end as code
   from p1 as p1
                 join p2 as p2
   on p1.id=p2.id
7. select EMPLOYEEID, 
                   case 
                   when datediff(year, HIREDATE, GETDATE())>20 then 'Veteran'
				               when datediff(year, HIREDATE, GETDATE())>10 then 'Senior'
				               when datediff(year, HIREDATE, GETDATE())>5 then 'mid-level'
				               when datediff(year, HIREDATE, GETDATE())>1 then 'Junior'
				               else 'new Hire' end as Result_stage
   from Employees
8. select id, vals, case 
                     when PATINDEX('[0-9]%' , vals)=1 then left(vals, patindex('%[^0-9]%' , vals+'a')-1)
		                   else null end as result
   from Getintegers

--Difficult Tasks

1. select id,  vals, 
     stuff( 
       stuff(vals, 1, 1, substring(vals, charindex(',', vals)+1, 1)), charindex(',', vals)+1, 1, left(vals, 1)) as new_vals
   from MultipleVals
2. select player_id, device_id
        from Activity as a
where event_date=(
       select min(event_date) 
	      from Activity
	      where player_id=a.player_id)    Ichki so‘rov (SELECT MIN(EVENT_DATE)) — har bir PLAYER_ID uchun birinchi login sanasini topadi.
 3. 

  
