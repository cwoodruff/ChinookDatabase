CREATE PROCEDURE [dbo].[sproc_CheckInvoiceLine]

(
    @InvoiceLineId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [InvoiceLine]
        WHERE InvoiceLineId = @InvoiceLineId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END