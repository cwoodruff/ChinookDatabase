CREATE PROCEDURE [dbo].[sproc_GetInvoiceByEmployee]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT  Invoice.*
FROM Customer INNER JOIN
Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE dbo.Customer.SupportRepId = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA