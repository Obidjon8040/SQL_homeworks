-- Easy-Level Tasks 
1.   BULK INSERT ning vazifasi - bu SQl serverda ko`p miqdordagi ma'lumotlarni tashqi fayldan tezda ma'lumotlar bazasidagi jadvalga yuklash uchun ishlatiladigan buyruq. Odatta  csv yoki txt korinishidagi fayllarni. 
2. Asosan csv, txt, xml shularni bilaman.
3. CREATE TABLE PRODUCTS (ProductID int primary key, ProductName varchar(50), Price Decimal(10.2)).
4. Insert into PRODUCTS values (1, 'Apple', '1200.01') Insert into bilan SQL da table ichiga ma`lumotlar kiritamiz va Insert DMl ga kiriadi.
5. NULL va NOT NULL o`rtasidagi farq bu NULL jadvalning bir joyida (qatorda yoki ustunda) ma'lumot bo`lmasa yani bo`sh bo`lsa  NULL bo`ladi, NULL qiymat kiritilmagan yoki nomalum degan manoni bildiradi. Misol uchun 
 CREATE TABLE PRODUCTS (ProductID int primary key, ProductName varchar(50) NUll, Price Decimal(10.2)) bu yerda ProductName ustuniga ma'lumot kiritsa ham kiritmasaham bo`ladi. NOT NULL esa bu maydon bo`sh qolmasligi kerak degani.
 Deyarli har doim ma'lumot kiritilishi kerak deganni. Misol uchun CREATE TABLE PRODUCTS (ProductID int primary key, ProductName varchar(50) nut null, Price Decimal(10.2)) bu yerda ProductName ustuni bo`sh qolmasligi kerak doim ma'lumot kiritilishi kerak.
6. Alter table Products 
   ADD constraint NEW_PRODNAME UNIQUE (ProductName)
   -- Alter table Products - Mavjud Products jadvalini o`zgartiryapman, 
   -- ADD constraint NEW_PRODNAME UNIQUE (ProductName) - ProductName ustiniga Unique cheklovi qoshilyapti,
   -- NEW_PRODNAME  bu yangi qo`shilgan cheklov nomi.
7. SQL serverda comment yozishning ikki xil usuli bor 1) -- asosan bitta qator uchun 2) /*   */ ko`p qatorlar uchun ishlatiladi. Commint yozish bu yozilgan kodlarni boshqalar uchun ham tushinarli bolishi uchun juda katta 
   axamiyatga ega. 
8. Create table Categories (CategoryID INT Primary key, CategoryName varchar(20) Unique). BU yerda Categories nomli jadval varatilda va ustunlari Primary key bolgan CategoryName Unique yani takrorlanmas bo`lsin degan cheklov qoyildi.
9. Identity bu SQl serverda jadval ustuniga o`zi avtomat tarzida raqam berib ketadi. Bu ustun har bir yangi qator (record) qo‘shilganda o‘zi avtomatik ravishda o‘sib boradi (1, 2, 3, 4, ...). 
  CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(20));  CustomerID 1 dan boshlaydi va har safar 1 qoshib boradi. 
-- Medium-Level Tasks
 10 Bulk insert Products from 'C:\date\File.txt' 
 with (firsrow=2,
       fieldterminator=',',
       rowterminator='\n') 
11. CREATE TABLE PRODUCTS 
                      (ProductID int primary key, 
                       ProductName varchar(50), 
                       Price Decimal(10,2))
    Create table Categories (
                        CategoryID INT Primary key, 
						CategoryName varchar(20) unique,
						productid int foreign key references products(Productid))
 12. PRIMARY KEY- bu jadvaldagi ustun soni takrorlanmas bolishini taminlaydi va bir vaqtning o`zida null va unique shartlarini qanoatlantiradi, odatda ID raqamlar uchun ishlatiladi
     Unique key - bu ham ustundagi qiymatlar takrorlanmas bolishi kerak Null qiymatga ruxsat beradi, bir jadvalda bir nechta unique key bolishi mumkin. 
 13. CREATE TABLE PRODUCTS 
                     (ProductID int primary key, 
                     ProductName varchar(50), 
                     Price Decimal(10,2) check(price>0)) 
   check(price>0) bu shart maxsulot narxini 0 ga teng bolmaslik shartini beradi
14. Alter table products add stock int not null default 1 
15. select productid, productname, isnull(price, 0) as product from PRODUCTS
16. FOREIGN KEY cheklovi — SQL Serverdagi ma’lumotlar orasidagi bog‘liqlikni ta’minlovchi vosita, FOREIGN KEY bir jadvaldagi ustunni boshqa jadvaldagi PRIMARY KEY yoki UNIQUE ustun bilan bog‘laydi.
    jadvallar o`rtasidagi manoli aloqani saqlay.

  
