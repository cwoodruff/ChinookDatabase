CREATE PROCEDURE [dbo].[sproc_GetGenreDetails]

(
	@GenreId int
)

AS
SELECT CAST((SELECT * FROM [Genre] WHERE GenreId = @GenreId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA