CREATE PROCEDURE [dbo].[sproc_DeleteMediaType]

(
	@MediaTypeId int
)

AS
DELETE FROM [MediaType]

WHERE
MediaTypeId = @MediaTypeId