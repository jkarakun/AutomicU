use [###DBNAME###]
IF OBJECT_ID('dbo.courses', 'U') IS NOT NULL 
  DROP TABLE dbo.courses; 

IF OBJECT_ID('dbo.instructors', 'U') IS NOT NULL 
  DROP TABLE dbo.instructors; 