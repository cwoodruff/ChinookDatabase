CREATE PROCEDURE [dbo].[sproc_DeleteCustomer]

(
	@CustomerId int
)

AS
DELETE FROM [Customer]

WHERE
CustomerId = @CustomerId