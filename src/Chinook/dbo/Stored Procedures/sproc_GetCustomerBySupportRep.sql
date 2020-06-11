CREATE PROCEDURE [dbo].[sproc_GetCustomerBySupportRep]

(
    @SupportRepId int
)

AS
SELECT CAST((SELECT * FROM [Customer] WHERE SupportRepId = @SupportRepId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA