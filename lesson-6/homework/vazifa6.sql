1. 1-usul  select distinct col1, col2 from InputTbl   
   2-usul  select col1, col2 from InputTbl
          group by col1, col2
2. select * from TestMultipleZero
   where not(A=0 AND B=0 AND C=0 AND D=0)
3. SELECT  * FROM section1
   where id%2=1
4. SELECT TOP 1 * FROM section1
          order by id asc
5. SELECT TOP 1 * FROM section1
          order by id desc
6. SELECT  * FROM section1
   where name like 'B%';
7. select * from  ProductCodes                 
   where code like '%\_%' escape '\'           SQL da like operatori ichida '_' belgi 1 ta belgini ifodalaydi, shuning uchun EScape dan foydalanamiz
