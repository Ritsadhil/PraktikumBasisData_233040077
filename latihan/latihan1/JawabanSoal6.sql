SELECT e.empid, e.firstname, e.lastname
FROM 
    HR.Employees AS e
	LEFT JOIN Sales.Orders AS o 
	ON o.empid = e.empid AND o.orderdate > '2016-05-01'
WHERE 
  o.orderid IS NULL AND e.empid IN (3,5,6)

