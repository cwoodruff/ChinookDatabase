CREATE PROCEDURE [dbo].[sproc_CheckGenre]

(
    @GenreId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Genre]
        WHERE GenreId = @GenreId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END