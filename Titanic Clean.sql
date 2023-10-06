Use [Data Cleaning]
go 

---Cleaning of Titanic database

---Splitting by delimeter comma into last name and first name

SELECT
PassengerId,

right(Name, Len(name)-Charindex(',', name)) as FirstName,
left(Name,Charindex(',', name)-1) as LastName,

---Converting lower case strings to Proper case
concat(upper(substring(sex,1,1)), lower(substring(sex,2,6))) as Sex,


Age,

--Converting all integers to its expression

case Survived when 0 then 'No' 
              when 1 then 'Yes' else 'Maybe' end as SURVIVED,

case Pclass when 1 then 'FirstClass' 
            when 2 then 'SecondClass' when 3 then 'ThirdClass' else 'NotRecorderd' end as pclass,

case Embarked when 'S' then 'Southampton' 
              when 'C' then 'Cherbourg' when 'Q' then 'QueensTown' else 'B' end as Embarked,

--Family Size
(SibSp+Parch) as familySize,

Ticket, Fare

into  [Data Cleaning]..[Titanic Clean]
from [Data Cleaning]..[Titanic Dirty]