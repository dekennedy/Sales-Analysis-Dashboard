--Cleaned Din_Customers Table--


SELECT 
  c.[CustomerKey] AS [Customer Key], 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  [FirstName] AS [First Name], 
  --[MiddleName], 
  c.[LastName] AS [Last Name], 
  c.[FirstName] + ' ' + c.lastname AS [Full Name], 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.[Gender] WHEN 'M' Then 'Male' WHEN 'F' Then 'Female' End AS Gender, 
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
  c.[DateFirstPurchase] AS [Date First Purchase], 
  --[CommuteDistance] 
  g.[City] as [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  Left Join dbo.DimGeography AS g On g.GeographyKey = c.GeographyKey 
ORDER BY 
  [Customer Key] ASC
