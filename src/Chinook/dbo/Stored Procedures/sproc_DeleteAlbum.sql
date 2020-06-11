CREATE PROCEDURE [dbo].[sproc_DeleteAlbum]

(
	@AlbumId int
)

AS
DELETE FROM [Album]

WHERE
AlbumId = @AlbumId