CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineDetails]

(
	@InvoiceLineId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE InvoiceLineId = @InvoiceLineId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA