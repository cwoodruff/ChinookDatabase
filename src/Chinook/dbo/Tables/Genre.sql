CREATE TABLE [dbo].[Genre] (
    [GenreId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([GenreId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IPK_Genre]
    ON [dbo].[Genre]([GenreId] ASC);

