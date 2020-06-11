CREATE PROCEDURE [dbo].[sproc_GetArtistDetails]

(
	@ArtistId int
)

AS
SELECT CAST((SELECT * FROM [Artist] WHERE ArtistId = @ArtistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA