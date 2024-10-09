SELECT 
    c.custid, 
    COUNT(o.orderid) AS numorders, 
    SUM(od.qty) AS totalqty
FROM 
    Sales.Customers AS c
	JOIN Sales.Orders AS o ON c.custid = o.custid
	JOIN Sales.OrderDetails AS od ON o.orderid = od.orderid   
	WHERE c.country = 'USA'
GROUP BY c.custid


