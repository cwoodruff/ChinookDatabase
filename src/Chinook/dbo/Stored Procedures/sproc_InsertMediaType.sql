CREATE PROCEDURE [dbo].[sproc_InsertMediaType]
(
	@Name nvarchar (MAX),
	@MediaTypeId  int OUTPUT
)

AS
INSERT INTO [MediaType]
(
	Name

)
VALUES
(
	@Name
)


SET @MediaTypeId= @@IDENTITY
 Return @MediaTypeId