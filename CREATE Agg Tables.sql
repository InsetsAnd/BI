USE AggsDemo

select count(*) from dbo.Sales

-- Aggregated by CalendarYear

SELECT D.CalendarYear,  SUM(S.SalesAmount) AS SalesAmount 
INTO dbo.SalesByYear
FROM dbo.Sales S
JOIN dbo.Date D ON D.Datekey = S.DateKey
GROUP BY D.CalendarYear


-- Aggregated by Year and ProductKey
SELECT P.ProductKey,D.CalendarYear, SUM(S.SalesAmount) AS SalesAmount
INTO dbo.SalesByProductYear
FROM dbo.Sales S
JOIN dbo.[Date] D ON S.DateKey = D.Datekey
JOIN dbo.Product P ON S.ProductKey = P.ProductKey
GROUP BY D.CalendarYear, P.ProductKey







-- DROP Aggs Tables 
DROP TABLE dbo.SalesByYear
DROP TABLE dbo.SalesByProductYear