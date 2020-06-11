CREATE PROCEDURE [dbo].[sproc_GetTrackByPlaylist]

(
    @PlaylistId int
)

AS
SELECT CAST((SELECT Track.* FROM PlaylistTrack INNER JOIN Track ON PlaylistTrack.TrackId = Track.TrackId WHERE dbo.PlaylistTrack.PlaylistId = @PlaylistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA