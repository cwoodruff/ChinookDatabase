CREATE PROCEDURE [dbo].[sproc_UpdateCustomer]
(
	@CustomerId int,
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
	@SupportRepId int
)

AS
UPDATE [Customer]
SET
FirstName = @FirstName,
LastName = @LastName,
Company = @Company,
Address = @Address,
City = @City,
State = @State,
Country = @Country,
PostalCode = @PostalCode,
Phone = @Phone,
Fax = @Fax,
Email = @Email,
SupportRepId = @SupportRepId

WHERE
CustomerId = @CustomerId