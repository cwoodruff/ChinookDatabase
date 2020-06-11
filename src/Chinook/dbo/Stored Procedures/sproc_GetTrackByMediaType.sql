CREATE PROCEDURE [dbo].[sproc_GetTrackByMediaType]

(
    @MediaTypeId int
)

AS
SELECT CAST((SELECT * FROM [Track] WHERE MediaTypeId = @MediaTypeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA