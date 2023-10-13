-- CLEANED DimCustomer Table --

SELECT c.customerkey,
       c.firstname,
       c.lastname,
	   c.firstname + ' ' + c.lastname AS FullName,
       CASE c.gender
         WHEN 'M' THEN 'Male'
         WHEN 'F' THEN 'Female'
       END    AS Gender,
       c.datefirstpurchase,
       g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM   [AdventureWorksDW2022].[dbo].[dimcustomer] AS c
       LEFT JOIN dbo.dimgeography AS g
              ON g.geographykey = c.geographykey 