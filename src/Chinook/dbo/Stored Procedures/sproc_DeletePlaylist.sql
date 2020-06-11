CREATE PROCEDURE [dbo].[sproc_DeletePlaylist]

(
	@PlaylistId int
)

AS
DELETE FROM [Playlist]

WHERE
PlaylistId = @PlaylistId