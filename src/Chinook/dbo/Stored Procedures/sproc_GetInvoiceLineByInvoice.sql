CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineByInvoice]

(
    @InvoiceId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA