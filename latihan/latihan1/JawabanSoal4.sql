SELECT c.custid, c.companyname, o.orderid, o.orderdate
FROM 
    Sales.Customers AS c
	LEFT JOIN Sales.Orders AS o 
ON 
	c.custid = o.custid