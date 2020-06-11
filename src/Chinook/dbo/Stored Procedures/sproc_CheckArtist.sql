CREATE PROCEDURE [dbo].[sproc_CheckArtist]

(
    @ArtistId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Artist]
        WHERE ArtistId = @ArtistId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END