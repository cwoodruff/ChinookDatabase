CREATE PROCEDURE [dbo].[sproc_InsertAlbum]
(
	@Title nvarchar (MAX),
	@ArtistId int,
	@AlbumId  int OUTPUT
)

AS
INSERT INTO [Album]
(
	Title,
	ArtistId

)
VALUES
(
	@Title,
	@ArtistId
)


SET @AlbumId= @@IDENTITY
 Return @AlbumId