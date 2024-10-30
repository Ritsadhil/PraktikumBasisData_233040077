--SOAL 1
SELECT Employee.Name, Departments.DepartmentsName
FROM Employee
INNER JOIN Departments
ON Employee.DepartmentsID = Departments.DepartmentsID

SELECT * FROM Employee
SELECT * FROM Projects
SELECT * FROM Salaries

--SOAL 2
SELECT Employee.Name, Projects.ProjectName FROM Employee
INNER JOIN Projects
ON Employee.DepartmentsID = Projects.DepartmentsID

--SOAL 3
SELECT Projects.ProjectName, Departments.DepartmentsName FROM Projects
LEFT JOIN Departments
ON Projects.DepartmentsID = Departments.DepartmentsID

--SOAL 4
SELECT Employee.Name, Salaries.Salaries FROM Employee
FULL JOIN Salaries
ON Employee.EmployeeID = Salaries.EmployeeID

--SOAL 5
SELECT Employee.Name, Projects.ProjectName FROM Employee
CROSS JOIN Projects

--SOAL 6
SELECT a.Name, b.Name FROM Employee AS A
INNER JOIN Employee AS b
ON a.EmployeeID = b.ManagerID

--SOAL 7 
SELECT Employee.Name, Departments.DepartmentsName FROM Employee
INNER JOIN Departments
ON Employee.DepartmentsID = Departments.DepartmentsID


