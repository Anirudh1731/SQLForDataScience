create database assignment;

use  assignment


CREATE TABLE Salesman (
    SalesmanId INT,
    Name VARCHAR(255),
    Commission DECIMAL(10, 2),
    City VARCHAR(255),
    Age INT
);

INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);

CREATE TABLE Customer (
    SalesmanId INT,
    CustomerId INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT,
);


INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000);

CREATE TABLE Orders (OrderId int, CustomerId int, SalesmanId int, Orderdate Date, Amount money)

INSERT INTO Orders Values 
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

-- Visualizing the orders table
select * from Orders

--Visualizing the Customer table
select * from Customer

--Visualizing the Salesman table
select * from Salesman

-- 1) Insert a new record in your Orders table.insert into Orders values (5004,1225,103,'2021-06-05',2500)select * from Orders

-- 2) Add Primary key constraint for SalesmanId column in Salesman table. Add default
--constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
--column in Customer table. Add not null constraint in Customer_name column for the
--Customer table.-- Add Primary Keyalter table Salesmanalter column SalesmanId INT NOT NULLalter table Salesman add primary key (SalesmanId)--Add Defaultalter table Salesmanadd constraint default_constraint Default 'California' for City;--add foreign key--have to remove two rows from customer table as it is new record in child classdelete Customer where SalesmanId in (107,110)select * from Customeralter table Customeradd CONSTRAINT foreign_constraint foreign key (SalesmanId) references Salesman(SalesmanId);--add not nullalter table Customer alter column CustomerName VARCHAR(255)  NOT NULL-- 3)Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase
--amount value greater than 500.select * from Customerwhere CustomerName like '%N'select * from Customerwhere PurchaseAmount > 500-- 4) Using SET operators, retrieve the first result with unique SalesmanId values from two
--tables, and the other result containing SalesmanId with duplicates from two tables.select SalesmanId from SalesmanUNIONselect SalesmanId from Customerselect SalesmanId from SalesmanUNION allselect SalesmanId from Customer--5)Display the below columns which has the matching data.
--Orderdate, Salesman Name, Customer Name, Commission, and City which has the
--range of Purchase Amount between 500 to 1500select o.Orderdate,s.Name ,c.CustomerName,s.Commission,s.CityfromSalesman as sJoinCustomer as c on s.SalesmanId=c.CustomerIdJoin Orders as o on o.SalesmanId=c.SalesmanIdwhere c.PurchaseAmount between 500 and 1500--6)Using right join fetch all the results from Salesman and Orders table.select * fromSalesman as sright joinOrders as oon s.SalesmanId=o.SalesmanId

