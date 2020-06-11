CREATE PROCEDURE [dbo].[sproc_CheckMediaType]

(
    @MediaTypeId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [MediaType]
        WHERE MediaTypeId = @MediaTypeId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END