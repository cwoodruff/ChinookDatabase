CREATE TABLE [dbo].[MediaType] (
    [MediaTypeId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([MediaTypeId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IPK_MediaType]
    ON [dbo].[MediaType]([MediaTypeId] ASC);

