CREATE PROCEDURE [dbo].[sproc_DeleteArtist]

(
	@ArtistId int
)

AS
DELETE FROM [Artist]

WHERE
ArtistId = @ArtistId