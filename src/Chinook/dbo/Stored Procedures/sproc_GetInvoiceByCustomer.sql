CREATE PROCEDURE [dbo].[sproc_GetInvoiceByCustomer]

(
    @CustomerId int
)

AS
SELECT CAST((SELECT * FROM [Invoice] WHERE CustomerId = @CustomerId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA