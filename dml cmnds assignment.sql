CREATE TABLE Managers (  
    Manager_Id INT PRIMARY KEY,  
    First_name VARCHAR(50),  
    Last_name VARCHAR(50),  
    DOB DATE,  
    Age INT CHECK (Age > 0), 
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    Gender VARCHAR(10) NOT NULL,  
    Department VARCHAR(50) NOT NULL,  
    Salary DECIMAL(10, 2) NOT NULL CHECK (Salary>=0));  


INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)VALUES  
(1, 'John', 'Doe', '1985-02-15', 40, 'Male', 'IT', 30000),  
(2, 'Jane', 'Smith', '1990-06-10', 34, 'Female', 'HR', 25000),  
(3, 'Aaliya', 'Khan', '1987-03-25', 37, 'Female', 'Finance', 28000),  
(4, 'Michael', 'Johnson', '1980-09-05', 45, 'Male', 'IT', 40000),  
(5, 'Emily', 'Davis', '1992-11-20', 32, 'Female', 'Marketing', 22000),  
(6, 'Chris', 'Brown', '1983-07-18', 41, 'Male', 'IT', 26000),  
(7, 'Sarah', 'Williams', '1981-12-30', 43, 'Female', 'Finance', 30000),  
(8, 'James', 'Wilson', '1975-01-16', 50, 'Male', 'HR', 35000),  
(9, 'Jessica', 'Garcia', '1995-04-22', 29, 'Female', 'Marketing', 23000),  
(10, 'David', 'Martinez', '1988-08-29', 36, 'Male', 'IT', 27000);

select*from managers;


SELECT First_name, Last_name, DOB FROM Managers WHERE Manager_Id=1;

SELECT Manager_Id, First_name, Last_name, (Salary * 12) AS Annual_Income FROM Managers;

SELECT*FROM Managers WHERE First_name!='Aaliya';

SELECT*FROM Managers WHERE Department='IT' AND Salary>25000;

SELECT*FROM Managers WHERE Salary BETWEEN 10000 AND 35000;
