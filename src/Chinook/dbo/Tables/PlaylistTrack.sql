CREATE TABLE [dbo].[PlaylistTrack] (
    [PlaylistId] INT NOT NULL,
    [TrackId]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([PlaylistId] ASC, [TrackId] ASC),
    FOREIGN KEY ([PlaylistId]) REFERENCES [dbo].[Playlist] ([PlaylistId]),
    FOREIGN KEY ([TrackId]) REFERENCES [dbo].[Track] ([TrackId])
);


GO
CREATE NONCLUSTERED INDEX [IPK_PlaylistTrack]
    ON [dbo].[PlaylistTrack]([PlaylistId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Track_PlaylistTrack]
    ON [dbo].[PlaylistTrack]([TrackId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Playlist_PlaylistTrack]
    ON [dbo].[PlaylistTrack]([PlaylistId] ASC);

