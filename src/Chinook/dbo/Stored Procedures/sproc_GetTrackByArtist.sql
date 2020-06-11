CREATE PROCEDURE [dbo].[sproc_GetTrackByArtist]
(
    @ArtistId int
)

AS
SELECT CAST((SELECT Track.*
FROM  Album INNER JOIN
        Track ON Album.AlbumId = Track.AlbumId
WHERE Album.ArtistId = @ArtistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA