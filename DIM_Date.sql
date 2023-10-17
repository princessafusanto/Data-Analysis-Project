-- cleansed DIM_Date table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date,
  --,[DayNumberOfWeek], 
  LEFT([EnglishDayNameOfWeek],3) as Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear], 
  [WeekNumberOfYear] as WeekNumber, 
  LEFT([EnglishMonthName],3) as EngMonth,
  --,[SpanishMonthName]
  --,[FrenchMonthName],
  [MonthNumberOfYear] as MonthNumber, 
  [CalendarQuarter] as CalQuarter, 
  [CalendarYear] as CalYear 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
  CalendarYear >= 2019

