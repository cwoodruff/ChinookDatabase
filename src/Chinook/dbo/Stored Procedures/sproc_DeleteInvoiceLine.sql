CREATE PROCEDURE [dbo].[sproc_DeleteInvoiceLine]

(
	@InvoiceLineId int
)

AS
DELETE FROM [InvoiceLine]

WHERE
InvoiceLineId = @InvoiceLineId