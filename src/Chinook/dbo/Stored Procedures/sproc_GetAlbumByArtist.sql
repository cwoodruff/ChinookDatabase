CREATE PROCEDURE [dbo].[sproc_GetAlbumByArtist]

(
    @ArtistId int
)

AS
SELECT CAST((SELECT * FROM [Album] WHERE ArtistId = @ArtistId  FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA