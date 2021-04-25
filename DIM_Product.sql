--Cleaned Products Table--

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  -- [ProductSubcategoryKey], 
  --[WeightUnitMeasureCode], 
  --[SizeUnitMeasureCode], 
  p.[EnglishProductName] AS [Product Name], 
  pc.EnglishProductCategoryName AS [Catagory Name], 
  ps.EnglishProductSubcategoryName AS [Sub Catagoty Name], 
  -- [SpanishProductName], 
  --[FrenchProductName], 
  --[StandardCost], 
  -- [FinishedGoodsFlag], 
  p.[Color] AS [Product Color], 
  --[SafetyStockLevel], 
  -- [ReorderPoint], 
  -- [ListPrice], 
  p.[Size] AS [Product Size], 
  -- [SizeRange], 
  --[Weight], 
  -- [DaysToManufacture], 
  p.[ProductLine] AS [Product Line], 
  [DealerPrice] AS [Dealer Price], 
  --[Class], 
  --[Style], 
  p.[ModelName] AS [Model Name], 
  --[LargePhoto], 
  [EnglishDescription] AS [English Description], 
  --[FrenchDescription], 
  --[ChineseDescription], 
  -- [ArabicDescription], 
  -- [HebrewDescription], 
  -- [ThaiDescription], 
  --  [GermanDescription], 
  --  [JapaneseDescription], 
  --  [TurkishDescription], 
  -- [StartDate], 
  -- [EndDate], 
  isnull(p.status, 'Outdated') AS [Produce Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc on pc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
