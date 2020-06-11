CREATE PROCEDURE [dbo].[sproc_InsertTrack]
(
	@Name nvarchar (MAX),
	@AlbumId int,
	@MediaTypeId int,
	@GenreId int,
	@Composer nvarchar (MAX),
	@Milliseconds int,
	@Bytes int,
	@UnitPrice money,
	@TrackId  int OUTPUT
)

AS
INSERT INTO [Track]
(
	Name,
	AlbumId,
	MediaTypeId,
	GenreId,
	Composer,
	Milliseconds,
	Bytes,
	UnitPrice

)
VALUES
(
	@Name,
	@AlbumId,
	@MediaTypeId,
	@GenreId,
	@Composer,
	@Milliseconds,
	@Bytes,
	@UnitPrice
)


SET @TrackId= @@IDENTITY
 Return @TrackId