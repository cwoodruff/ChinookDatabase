CREATE PROCEDURE [dbo].[sproc_GetCustomerDetails]

(
	@CustomerId int
)

AS
SELECT CAST((SELECT * FROM [Customer] WHERE CustomerId = @CustomerId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA