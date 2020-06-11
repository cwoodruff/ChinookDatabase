CREATE PROCEDURE [dbo].[sproc_InsertArtist]
(
	@Name nvarchar (MAX),
	@ArtistId  int OUTPUT
)

AS
INSERT INTO [Artist]
(
	Name

)
VALUES
(
	@Name
)


SET @ArtistId= @@IDENTITY
 Return @ArtistId