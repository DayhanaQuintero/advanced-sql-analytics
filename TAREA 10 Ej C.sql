--EJERCICIO 1 USANDO GROUP BY CORREGIDO--
SELECT s.ProductID, SUM(OrderQty) as CantidadTotal, SUM(LineTotal) as TotalVentas
FROM Sales.SalesOrderDetail s
GROUP BY s.ProductID

--EJERCICIO 5 USANDO RANK CORREGIDO--
SELECT s.SalesOrderID, s.ProductID, s.LineTotal,
RANK() OVER(PARTITION BY SalesOrderID ORDER BY LineTotal DESC) as NumRank
FROM Sales.SalesOrderDetail s

--EJERCICIO 6 USANDO DENSE RANK CORREGIDO--
SELECT s.SalesOrderID, s.ProductID, s.LineTotal,
DENSE_RANK() OVER(PARTITION BY SalesOrderID ORDER BY LineTotal DESC) as NumDenseRank
FROM Sales.SalesOrderDetail s 