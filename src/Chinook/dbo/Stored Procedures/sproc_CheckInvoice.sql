CREATE PROCEDURE [dbo].[sproc_CheckInvoice]

(
    @InvoiceId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Invoice]
        WHERE InvoiceId = @InvoiceId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END