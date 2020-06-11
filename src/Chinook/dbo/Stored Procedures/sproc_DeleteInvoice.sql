CREATE PROCEDURE [dbo].[sproc_DeleteInvoice]

(
	@InvoiceId int
)

AS
DELETE FROM [Invoice]

WHERE
InvoiceId = @InvoiceId