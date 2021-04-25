--Cleaned  FACT_InternetSales Table --


SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --  [PromotionKey], 
  --  [CurrencyKey], 
  --  [SalesTerritoryKey], 
  [SalesOrderNumber], 
  --  [SalesOrderLineNumber], 
  --  [RevisionNumber], 
  --  [OrderQuantity], 
  --  [UnitPrice], 
  --  [ExtendedAmount], 
  --  [UnitPriceDiscountPct], 
  --  [DiscountAmount], 
  --  [ProductStandardCost], 
  --  [TotalProductCost], 
 [SalesAmount] 
  --  [TaxAmt], 
  --  [Freight], 
  --  [CarrierTrackingNumber], 
  --  [CustomerPONumber], 
  --  [OrderDate], 
  --  [DueDate], 
  --  [ShipDate], 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  Left(OrderDateKey, 4) >= Year(GETDATE()) -2 --Limtit to 2 Prior years
ORDER BY 
  OrderDateKey ASC
