CREATE PROCEDURE [dbo].[sproc_UpdateGenre]
(
	@GenreId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [Genre]
SET
Name = @Name

WHERE
GenreId = @GenreId