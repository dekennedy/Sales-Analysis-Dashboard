/****** Script for SelectTopNRows command from SSMS  ******/
--Cleaned DIM_DataTable

SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month, 
  Left([EnglishMonthName], 3) As ShortMonth, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNr, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  CalendarYear >= 2019

