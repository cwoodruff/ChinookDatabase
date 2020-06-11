CREATE PROCEDURE [dbo].[sproc_InsertCustomer]
(
	@FirstName nvarchar (MAX),
	@LastName nvarchar (MAX),
	@Company nvarchar (MAX),
	@Address nvarchar (MAX),
	@City nvarchar (MAX),
	@State nvarchar (MAX),
	@Country nvarchar (MAX),
	@PostalCode nvarchar (MAX),
	@Phone nvarchar (MAX),
	@Fax nvarchar (MAX),
	@Email nvarchar (MAX),
	@SupportRepId int,
	@CustomerId  int OUTPUT
)

AS
INSERT INTO [Customer]
(
	FirstName,
	LastName,
	Company,
	Address,
	City,
	State,
	Country,
	PostalCode,
	Phone,
	Fax,
	Email,
	SupportRepId

)
VALUES
(
	@FirstName,
	@LastName,
	@Company,
	@Address,
	@City,
	@State,
	@Country,
	@PostalCode,
	@Phone,
	@Fax,
	@Email,
	@SupportRepId
)


SET @CustomerId= @@IDENTITY
 Return @CustomerId