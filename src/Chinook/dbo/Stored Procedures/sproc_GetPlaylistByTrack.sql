CREATE PROCEDURE [dbo].[sproc_GetPlaylistByTrack]

(
    @TrackId int
)

AS
SELECT CAST((SELECT Playlist.*
FROM            Playlist INNER JOIN
                PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
WHERE dbo.PlaylistTrack.TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA