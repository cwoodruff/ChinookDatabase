CREATE PROCEDURE [dbo].[sproc_UpdateEmployee]
(
	@EmployeeId int,
	@LastName nvarchar (MAX),
	@FirstName nvarchar (MAX),
	@Title nvarchar (MAX),
	@ReportsTo int,
	@BirthDate datetime,
	@HireDate datetime,
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX)
)

AS
UPDATE [Employee]
SET
LastName = @LastName,
FirstName = @FirstName,
Title = @Title,
ReportsTo = @ReportsTo,
BirthDate = @BirthDate,
HireDate = @HireDate,
Address = @Address,
City = @City,
State = @State,
Country = @Country,
PostalCode = @PostalCode,
Phone = @Phone,
Fax = @Fax,
Email = @Email

WHERE
EmployeeId = @EmployeeId