CREATE PROCEDURE [dbo].[sproc_GetPlaylistDetails]

(
	@PlaylistId int
)

AS
SELECT CAST((SELECT * FROM [Playlist] WHERE PlaylistId = @PlaylistId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA