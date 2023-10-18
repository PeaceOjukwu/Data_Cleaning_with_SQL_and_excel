Use [Walmart Sales]
Go

SELECT 
[Invoice ID], Branch, City, [Customer type], Gender, [Product line],
[Unit price], Quantity,

REPLACE([Tax 5%], 'Tax 5%', 'VAT') as 'VAT',

REPLACE(Total, 'Total', 'Sales') as 'Sales',

---------Coverting datetime data type to date 

Cast(date as date) As Date,

------------Modifying column to MonthName

DateName(Month,date) as MonthName,

DateName(WEEKDAY,date) as DayName,

-----------Converting Time to Varchar
case when time between '00:00:00' and '12:00:00' then 'Morning'
     when time between '12:01:00' and '16:00:00' then 'Afternoon'
        else  'Evening' end as TimeOfDay,

Payment, cogs,[gross Margin percentage],[gross income],Rating

Into [Walmart Sales]..WalmartSalesClean
from [Walmart Sales]..WalmartSalesData
