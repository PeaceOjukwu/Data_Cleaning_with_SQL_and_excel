**About the Data**

The dirty university raw data consisting of 6560 rows and 1 column was originally from Kaggle.com, and it contained information about location, name, address, city and other information about colleges. Here are the steps I took cleaning this Dataset.

**CLEANING PROCESS**

•	Deleting duplicates, null entries/blanks

There were no duplicates found or null entries in this dataset

•	Header

The header which was in one column. Was copied and pasted in another sheet, where it was splitted by delimiter using power query and a total 45 columns were available.

•	Rows

The remaining 6559 rows were also separated by delimiter, but at column 21 it was found that the columns were merged and multiple tab used in some rows.
Mostly in column 21(Naics Desc), each time it was separated the college gets separated from the university causing extra rows. This was fixed by splitting this particular column by delimiter ‘h’ by the website. After the spitting I used find and replace to replace ‘ttps’ with ‘https’.

The cleaning of this data was done mainly with power query which makes it easier to transform data.
