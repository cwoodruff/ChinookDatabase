CREATE PROCEDURE [dbo].[sproc_UpdateAlbum]
(
	@AlbumId int,
	@Title nvarchar (MAX),
	@ArtistId int
)

AS
UPDATE [Album]
SET
Title = @Title,
ArtistId = @ArtistId

WHERE
AlbumId = @AlbumId