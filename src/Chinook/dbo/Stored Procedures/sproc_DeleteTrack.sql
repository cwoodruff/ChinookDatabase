CREATE PROCEDURE [dbo].[sproc_DeleteTrack]

(
	@TrackId int
)

AS
DELETE FROM [Track]

WHERE
TrackId = @TrackId