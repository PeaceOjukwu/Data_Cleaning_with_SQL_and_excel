--Data cleaning and modification
Use [Data exploration]
go 

select 
Distinct
[Transaction ID], cast(Date as date) as Date,
--New column Year
year(Date) as Year,
--New column Month of the year
DATENAME(Month,Date) as Month,
-----New column Day of the month
DATENAME(Day,Date) as Day, [Customer ID],Gender, Age,
---Age group range
case when Age <18 then 'Under18'
	 when Age between 18 and 30 then '18-30'
	 when Age between 31 and 40 then '31-40'
	 when Age between 41 and 50 then '41-50'
	 when Age between 51 and 60 then '51-60'
	 when Age between 61 and 70 then '61-70'
	 when Age between 71 and 80 then '71-80'
	 else 'old' end as AgeGroup, 
[Product Category],Quantity, [Price per Unit],[Total Amount]
into [Data exploration]..retailSales
from [Data exploration]..retail_sales_dataset




