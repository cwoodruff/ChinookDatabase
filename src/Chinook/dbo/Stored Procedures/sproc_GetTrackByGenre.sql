CREATE PROCEDURE [dbo].[sproc_GetTrackByGenre]

(
    @GenreId int
)

AS
SELECT CAST((SELECT * FROM [Track] WHERE GenreId = @GenreId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA