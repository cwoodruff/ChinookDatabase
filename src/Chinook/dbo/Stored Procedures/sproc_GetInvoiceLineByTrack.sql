CREATE PROCEDURE [dbo].[sproc_GetInvoiceLineByTrack]

(
    @TrackId int
)

AS
SELECT CAST((SELECT * FROM [InvoiceLine] WHERE TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA