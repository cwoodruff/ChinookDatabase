CREATE PROCEDURE [dbo].[sproc_GetTrackByInvoice]

(
    @InvoiceId int
)

AS
SELECT CAST((SELECT  Track.*
FROM InvoiceLine INNER JOIN
Track ON InvoiceLine.TrackId = Track.TrackId
WHERE dbo.InvoiceLine.InvoiceId = @InvoiceId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA