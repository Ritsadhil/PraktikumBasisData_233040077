CREATE TABLE Departments (
	DepartmentsID int IDENTITY(1,1) PRIMARY KEY,
	DepartmentsName varchar(50)
)

CREATE TABLE Projects (
	ProjectsID int IDENTITY(1,1) PRIMARY KEY,
	ProjectName varchar(50),
	DepartmentsID int,
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
)

CREATE TABLE Employee (
	EmployeeID int IDENTITY(1,1) PRIMARY KEY,
	Name varchar(50),
	ManagerID int,
	DepartmentsID int,
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID),
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
)

CREATE TABLE Salaries (
EmployeeID int,
Salaries decimal(10,2),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
)

