CREATE PROCEDURE [dbo].[sproc_GetMediaTypeDetails]

(
	@MediaTypeId int
)

AS
SELECT CAST((SELECT * FROM [MediaType] WHERE MediaTypeId = @MediaTypeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA