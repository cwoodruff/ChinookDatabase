CREATE PROCEDURE [dbo].[sproc_InsertGenre]
(
	@Name nvarchar (MAX),
	@GenreId  int OUTPUT
)

AS
INSERT INTO [Genre]
(
	Name

)
VALUES
(
	@Name
)


SET @GenreId= @@IDENTITY
 Return @GenreId