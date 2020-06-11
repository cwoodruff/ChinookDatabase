CREATE PROCEDURE [dbo].[sproc_InsertPlaylistTrack]
(
	@PlaylistId int,
	@TrackId int
)

AS
INSERT INTO [PlaylistTrack]
(
	PlaylistId,
	TrackId

)
VALUES
(
	@PlaylistId,
	@TrackId
)