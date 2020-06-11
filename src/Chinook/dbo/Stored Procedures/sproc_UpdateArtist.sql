CREATE PROCEDURE [dbo].[sproc_UpdateArtist]
(
	@ArtistId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Artist]
SET
Name = @Name

WHERE
ArtistId = @ArtistId