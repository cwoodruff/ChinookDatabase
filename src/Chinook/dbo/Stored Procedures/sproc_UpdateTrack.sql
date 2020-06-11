CREATE PROCEDURE [dbo].[sproc_UpdateTrack]
(
	@TrackId int,
	@Name nvarchar (MAX),
	@AlbumId int,
	@MediaTypeId int,
	@GenreId int,
	@Composer nvarchar (MAX),
	@Milliseconds int,
	@Bytes int,
	@UnitPrice money
)

AS
UPDATE [Track]
SET
Name = @Name,
AlbumId = @AlbumId,
MediaTypeId = @MediaTypeId,
GenreId = @GenreId,
Composer = @Composer,
Milliseconds = @Milliseconds,
Bytes = @Bytes,
UnitPrice = @UnitPrice

WHERE
TrackId = @TrackId