CREATE PROCEDURE [dbo].[sproc_DeleteGenre]

(
	@GenreId int
)

AS
DELETE FROM [Genre]

WHERE
GenreId = @GenreId