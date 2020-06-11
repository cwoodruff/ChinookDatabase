CREATE PROCEDURE [dbo].[sproc_UpdatePlaylist]
(
	@PlaylistId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Playlist]
SET
Name = @Name

WHERE
PlaylistId = @PlaylistId