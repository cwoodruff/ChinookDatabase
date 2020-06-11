CREATE PROCEDURE [dbo].[sproc_DeletePlaylistTrack]

(
	@PlaylistId int,
	@TrackId int
)

AS
DELETE FROM [PlaylistTrack]

WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId