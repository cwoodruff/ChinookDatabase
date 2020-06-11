CREATE PROCEDURE [dbo].[sproc_GetInvoiceDetails]

(
	@InvoiceId int
)

AS
SELECT CAST((SELECT * FROM [Invoice] WHERE InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA