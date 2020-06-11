CREATE TABLE [dbo].[Artist] (
    [ArtistId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([ArtistId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IPK_Artist]
    ON [dbo].[Artist]([ArtistId] ASC);

