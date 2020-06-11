CREATE PROCEDURE [dbo].[sproc_GetPlaylistTrackDetails]

(
	@PlaylistId int,
	@TrackId int
)

AS
SELECT CAST((SELECT * FROM [PlaylistTrack]
WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA