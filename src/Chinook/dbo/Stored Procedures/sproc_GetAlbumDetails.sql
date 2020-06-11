CREATE PROCEDURE [dbo].[sproc_GetAlbumDetails]

(
	@AlbumId int
)
AS
SELECT CAST((SELECT * FROM [Album] WHERE AlbumId = @AlbumId  FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA