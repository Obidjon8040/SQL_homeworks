Easy
Ma’lumot (Data): Har qanday faktlar, raqamlar, belgilar yoki yozuvlar bo‘lib, ular keyinchalik tahlil qilish yoki qaror qabul qilish uchun ishlatiladi. Ma’lumotlar bazasi (Database): Ma’lumotlarni tartib bilan saqlash va boshqarish uchun ishlatiladigan tizim yoki joy. U turli ma’lumotlarni bir joyga jamlaydi. Aloqador ma’lumotlar bazasi (Relational Database): Ma’lumotlar jadvallar ko‘rinishida saqlanadigan va bu jadvallar o‘zaro bog‘langan bo‘ladigan bazadir. Har bir jadvalda ustun (column) va qatorlar (row) mavjud bo‘ladi. Jadval (Table): Ma’lumotlar bazasining bir qismini tashkil etadi. U ma’lumotlarni qatorda va ustunda saqlaydi. Har bir ustun ma’lumot turini, har bir qator esa aniq yozuvni bildiradi.
1) Ma’lumotlarni ishonchli saqlash – katta hajmdagi ma’lumotlarni xavfsiz va samarali saqlaydi. 2) Yuqori xavfsizlik darajasi – foydalanuvchilarga ruxsat asosida kirish huquqlari beriladi. 3) Zaxira nusxa va tiklash (Backup and Restore) – ma’lumotlarni yo‘qotishdan saqlab qolish uchun zaxira qilish mumkin. 4) Tizimni boshqarish qulayligi – vizual interfeys orqali ma’lumotlar bazasini boshqarish oson. 5) So‘rovlarni (query) bajarish kuchi – murakkab SQL so‘rovlarini tez va samarali bajaradi.
1) Windows Authentication – foydalanuvchi Windows tizimidagi akkaunt orqali avtomatik ravishda ulanadi. 2) SQL Server Authentication – foydalanuvchi maxsus foydalanuvchi nomi va parol orqali tizimga kiradi.
Medium
CREATE DATABASE SCHOOLDB
CREATE TABLE STUDENTS (STUDENTID INT, NAME VARCHAR(50), AGE INT);
-- SQL SERVER (MA'LUMOTLAR BAZASI TIZIMI), SSMS (DASTUR VOSITASI), SQL (BUYRUQLAR TILI)
Hard
DQL - DATA QUERY LANGUAGE ASOSIY BUYRUQ SELECT, DML-DATA MANIPULATION LANGUAGE BUYRUQLAR INSERT UPDATE DALETE, DDL-DATA DEFINITION LANGUAGE BUYRUQLAR CREATE ALTER DROP, DCL-DATA CONTROL LANGUAGE BUYRUQLAR GRANT REVOKE, TCL-TRANSACTION CONTROL LANGUAGE BUYRUQLAR COMMIT ROLLBACK SAVEPOINT.
SELECT * FROM STUDENTS;
INSERT INTO STUDENTS VALUES (1, 'ULUG',14), (2, 'ABDILLO', 15), (3, 'XAMID', 18); 
SELECT * FROM STUDENTS
