SELECT 
  c.[CustomerKey], 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.[FirstName], 
  --[MiddleName], 
  c.[LastName], 
  c.FirstName + ' ' + c.LastName as FullName, 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  c.[Gender], 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.[DateFirstPurchase], 
  --[CommuteDistance]
  g.City as City 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  JOIN [AdventureWorksDW2019].[dbo].[DimGeography] g ON c.GeographyKey = g.GeographyKey
ORDER BY CustomerKey ASC