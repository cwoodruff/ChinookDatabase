CREATE PROCEDURE [dbo].[sproc_CheckPlaylist]

(
    @PlaylistId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Playlist]
        WHERE PlaylistId = @PlaylistId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END