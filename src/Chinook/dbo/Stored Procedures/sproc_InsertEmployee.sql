CREATE PROCEDURE [dbo].[sproc_InsertEmployee]
(
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
	@Email nvarchar (MAX),
	@EmployeeId  int OUTPUT
)

AS
INSERT INTO [Employee]
(
	LastName,
	FirstName,
	Title,
	ReportsTo,
	BirthDate,
	HireDate,
	Address,
	City,
	State,
	Country,
	PostalCode,
	Phone,
	Fax,
	Email

)
VALUES
(
	@LastName,
	@FirstName,
	@Title,
	@ReportsTo,
	@BirthDate,
	@HireDate,
	@Address,
	@City,
	@State,
	@Country,
	@PostalCode,
	@Phone,
	@Fax,
	@Email
)


SET @EmployeeId= @@IDENTITY
 Return @EmployeeId