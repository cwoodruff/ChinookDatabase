CREATE PROCEDURE [dbo].[sproc_UpdatePlaylistTrack]
(
	@PlaylistId int,
	@TrackId int
)

AS
UPDATE [PlaylistTrack]
SET
PlaylistId = @PlaylistId,
TrackId = @TrackId

WHERE
PlaylistId = @PlaylistId
AND
TrackId = @TrackId