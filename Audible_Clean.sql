USE [Data Cleaning]
Go

----Cleaning of Audible Data set
SELECT
Name,

--Cleaning of Author Column

Right(Author, len(Author)-Charindex(':',Author)) as Author,

---Cleaning of Narrator Column
Right(Narrator, len(Narrator)-Charindex(':',Narrator)) as Narrator,

Time,

--Data type conversion in Release date column
Cast(Releasedate as date) AS Date,

Language,

--Cleaning of star column and splitting to create Ratings Column

left(Stars, Charindex(' ', Stars)) as Stars,

Right(Stars, len(Stars)-Charindex('s',Stars)-4) as Ratings, 
Price


Into [Data Cleaning]..audible_clean
from [Data Cleaning]..audible_uncleaned



