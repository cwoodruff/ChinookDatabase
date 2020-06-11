CREATE PROCEDURE [dbo].[sproc_CheckAlbum]

(
    @AlbumId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Album]
        WHERE AlbumID = @AlbumId
    )
                THEN CAST(1 AS BIT)
            ELSE CAST(0 AS BIT) END