-- Cleaned Internet Sales Table --

SELECT [productkey]            AS ProductKey,
       [orderdatekey]          AS OrderDate,
       [duedatekey]            AS DueDate,
       [shipdatekey]           AS ShipDate,
       [customerkey]           AS CustomerKey,
       --,[PromotionKey]
       --,[CurrencyKey]
       --,[SalesTerritoryKey]
       [salesordernumber]      AS OrderNumber,
       --,[SalesOrderLineNumber]
       --,[RevisionNumber]
       --,[OrderQuantity]
       --,[UnitPrice]
       --,[ExtendedAmount]
       --,[UnitPriceDiscountPct]
       --,[DiscountAmount]
       --,[ProductStandardCost]
       --,[TotalProductCost]                 
       --,[TaxAmt]
       --,[Freight]
       --,[CarrierTrackingNumber]
       --,[CustomerPONumber]
       --,[OrderDate]
       --,[DueDate]
       --,[ShipDate]
       Round([salesamount], 2) AS SalesAmount
FROM   [AdventureWorksDW2022].[dbo].[factinternetsales]
WHERE  LEFT(orderdatekey, 4) >= Year(Getdate()) - 2 -- Using past 2 years only
ORDER  BY orderdate ASC 