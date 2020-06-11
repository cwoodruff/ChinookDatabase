CREATE PROCEDURE [dbo].[sproc_UpdateMediaType]
(
	@MediaTypeId int,
	@Name nvarchar (MAX)
)

AS
UPDATE [MediaType]
SET
Name = @Name

WHERE
MediaTypeId = @MediaTypeId