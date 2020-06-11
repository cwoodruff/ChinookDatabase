CREATE PROCEDURE [dbo].[sproc_GetTrackByAlbum]

(
    @AlbumId int
)

AS
SELECT CAST((SELECT * FROM [Track]
WHERE AlbumId = @AlbumId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA