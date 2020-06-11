CREATE TABLE [dbo].[Track] (
    [TrackId]      INT             IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (200)  NOT NULL,
    [AlbumId]      INT             NULL,
    [MediaTypeId]  INT             NOT NULL,
    [GenreId]      INT             NULL,
    [Composer]     NVARCHAR (220)  NULL,
    [Milliseconds] INT             NOT NULL,
    [Bytes]        INT             NULL,
    [UnitPrice]    NUMERIC (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([TrackId] ASC),
    FOREIGN KEY ([AlbumId]) REFERENCES [dbo].[Album] ([AlbumId]),
    FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genre] ([GenreId]),
    FOREIGN KEY ([MediaTypeId]) REFERENCES [dbo].[MediaType] ([MediaTypeId])
);


GO
CREATE NONCLUSTERED INDEX [IPK_Track]
    ON [dbo].[Track]([TrackId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Album_Track]
    ON [dbo].[Track]([AlbumId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_MediaType_Track]
    ON [dbo].[Track]([MediaTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Genre_Track]
    ON [dbo].[Track]([GenreId] ASC);

