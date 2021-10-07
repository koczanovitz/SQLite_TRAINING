SELECT * FROM OrderDetail;
SELECT *, UnitPrice * Quantity * (1 - Discount) AS TotalSale FROM OrderDetail;

SELECT OrderId, 
	   SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalSale
FROM OrderDetail
GROUP BY OrderId;

SELECT OrderId, 
	   SUM(UnitPrice * Quantity * (1 - Discount)) AS TotalSale
FROM OrderDetail
GROUP BY OrderId
ORDER BY TotalSale DESC;

SELECT * FROM "Order";

SELECT ShipCountry,
	   COUNT(ShipCountry) AS ilosc_razy
FROM "Order"
GROUP BY ShipCountry;

SELECT ShipCountry,
	   COUNT(ShipCountry) AS ilosc_razy
FROM "Order"
GROUP BY ShipCountry
ORDER BY ilosc_razy DESC;

SELECT ShipCountry, Freight,
	   COUNT(ShipCountry) AS ilosc_razy,
	   AVG(Freight) AS srednia_frachtu
FROM "Order"
GROUP BY ShipCountry
ORDER BY ilosc_razy DESC;

SELECT ShipCountry, Freight,
	   COUNT(ShipCountry) AS ilosc_razy,
	   AVG(Freight) AS srednia_frachtu
FROM "Order"
GROUP BY ShipCountry
ORDER BY srednia_frachtu DESC;

SELECT ShipCountry, Freight,
	   COUNT(ShipCountry) AS ilosc_razy,
	   AVG(Freight) AS srednia_frachtu,
	   MIN(Freight) AS min_frachtu,
	   MAX(Freight) AS max_frachtu
FROM "Order"
GROUP BY ShipCountry
ORDER BY srednia_frachtu DESC;

SELECT ShipCountry, Freight,
	   COUNT(ShipCountry) AS ilosc_razy,
	   AVG(Freight) AS srednia_frachtu,
	   MIN(Freight) AS min_frachtu,
	   MAX(Freight) AS max_frachtu
FROM "Order"
GROUP BY ShipCountry
HAVING max_frachtu > 300
ORDER BY srednia_frachtu DESC;

SELECT ShipCountry, Freight,
	   COUNT(ShipCountry) AS ilosc_razy,
	   AVG(Freight) AS srednia_frachtu,
	   MIN(Freight) AS min_frachtu,
	   MAX(Freight) AS max_frachtu
FROM "Order"
WHERE ShipCountry GLOB '[A-D]*'
GROUP BY ShipCountry
HAVING max_frachtu > 300.00
ORDER BY srednia_frachtu DESC;