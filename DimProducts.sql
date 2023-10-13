-- CLEANED DimProduct Table --

SELECT p.[productkey],
       p.[productalternatekey]          AS ProductItemCode,
       --[productsubcategorykey],
       --[weightunitmeasurecode],
       --[sizeunitmeasurecode],
       p.[englishproductname]           AS ProductName,
       ps.englishproductsubcategoryname AS SubCategory,
       -- Joined in from sub category table
       pc.englishproductcategoryname    AS ProductCategory,
       -- Joined in from category table
       --[spanishproductname],
       --[frenchproductname],
       --[standardcost],
       --[finishedgoodsflag],
       p.[color]                        AS ProductColor,
       --[safetystocklevel],
       --[reorderpoint],
       --[listprice],
       p.[size]                         AS ProductSize,
       --[sizerange],
       --[weight],
       --[daystomanufacture],
       p.[productline]                  AS ProductLine,
       --[dealerprice],
       --[class],
       --[style],
       p.[modelname]                    AS ProductModelName,
       --[largephoto],
       p.[englishdescription]           AS ProductDescription,
       Isnull (p.[status], 'Outdated')  AS ProductStatus
--[frenchdescription],
--[chinesedescription],
--[arabicdescription],
--[hebrewdescription],
--[thaidescription],
--[germandescription],
--[japanesedescription],
--[turkishdescription],
--[startdate],
--[enddate],
FROM   [AdventureWorksDW2022].[dbo].[dimproduct] AS p
       LEFT JOIN dbo.dimproductsubcategory AS ps
              ON ps.productsubcategorykey = p.productsubcategorykey
       LEFT JOIN dbo.dimproductcategory AS pc
              ON ps.productcategorykey = pc.productcategorykey
ORDER  BY p.productkey ASC 