CREATE PROCEDURE [dbo].[sproc_InsertPlaylist]
(
	@Name nvarchar (MAX),
	@PlaylistId  int OUTPUT
)

AS
INSERT INTO [Playlist]
(
	Name

)
VALUES
(
	@Name
)


SET @PlaylistId= @@IDENTITY
 Return @PlaylistId