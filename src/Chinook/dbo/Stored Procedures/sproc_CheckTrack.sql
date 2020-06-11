CREATE PROCEDURE [dbo].[sproc_CheckTrack]

(
    @TrackId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Track]
        WHERE TrackId = @TrackId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END