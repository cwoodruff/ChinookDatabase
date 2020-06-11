CREATE TABLE [dbo].[Playlist] (
    [PlaylistId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([PlaylistId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IPK_Playlist]
    ON [dbo].[Playlist]([PlaylistId] ASC);

