--1. HeartDisease

CREATE TABLE HeartDisease (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    DiagnosisDate DATE,
    Treatment VARCHAR(100),
    Status VARCHAR(20)
);

INSERT INTO HeartDisease (PatientID, PatientName, Age, DiagnosisDate, Treatment, Status)
VALUES
    (1, 'John Doe', 55, '2023-01-15', 'Medication A', 'Active'),
    (2, 'Jane Smith', 62, '2023-02-20', 'Surgery', 'Active'),
    (3, 'Alice Johnson', 47, '2023-03-10', 'Medication B', 'Inactive');

--2.Diabetes:

   CREATE TABLE Diabetes (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    DiagnosisDate DATE,
    Medication VARCHAR(100),
    Status VARCHAR(20)
);

select * from Diabetes

INSERT INTO Diabetes (PatientID, PatientName, Age, DiagnosisDate, Medication, Status)
VALUES
    (1, 'John Doe', 55, '2023-01-05', 'Insulin', 'Active'),
    (4, 'Bob Brown', 40, '2023-03-25', 'Metformin', 'Active'),
    (5, 'Emily White', 35, '2023-04-10', 'Diet and Exercise', 'Inactive');

--3. Cancer:
CREATE TABLE Cancer (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    DiagnosisDate DATE,
    Treatment VARCHAR(100),
    Status VARCHAR(20)
);

INSERT INTO Cancer (PatientID, PatientName, Age, DiagnosisDate, Treatment, Status)
VALUES
    (6, 'Mark Green', 60, '2023-02-15', 'Chemotherapy', 'Active'),
    (7, 'Sarah Taylor', 42, '2023-05-05', 'Radiation Therapy', 'Active');


	begin transaction

	update HeartDisease set Status='Inactive' where Age>50
	select * from HeartDisease

	rollback tran

	begin transaction

	insert into Diabetes values (6,'Ani',48,'2023-02-07','Insulin','Active')
	select * from Diabetes

	commit tran


	select *,DENSE_RANK() over (order by DiagnosisDate) as rank_ from Diabetes

	select *,DENSE_RANK() over (order by Age) as rank_ from HeartDisease

	Select * from Cancer
	begin transaction
	delete from Cancer where age<45
	Select * from Cancer
	rollback tran

	select * from Diabetes
	begin transaction
	update Diabetes set Age=Age+3 
	select * from Diabetes

	commit tran

	select * from Diabetes
	select * from Cancer
	select * from HeartDisease

	select *,ntile(2) over(order by d.PatientId) as ntile from
	Diabetes d
	full outer join
	Cancer c on d.PatientID=c.PatientID
	full outer join
	HeartDisease h on h.PatientID=c.PatientID
