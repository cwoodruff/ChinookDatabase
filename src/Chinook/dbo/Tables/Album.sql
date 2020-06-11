CREATE TABLE [dbo].[Album] (
    [AlbumId]  INT            IDENTITY (1, 1) NOT NULL,
    [Title]    NVARCHAR (160) NOT NULL,
    [ArtistId] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([AlbumId] ASC),
    FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artist] ([ArtistId])
);


GO
CREATE NONCLUSTERED INDEX [IPK_ProductItem]
    ON [dbo].[Album]([AlbumId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Artist_Album]
    ON [dbo].[Album]([ArtistId] ASC);

