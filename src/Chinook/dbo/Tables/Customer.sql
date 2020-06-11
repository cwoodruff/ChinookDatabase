CREATE TABLE [dbo].[Customer] (
    [CustomerId]   INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    NVARCHAR (40) NOT NULL,
    [LastName]     NVARCHAR (20) NOT NULL,
    [Company]      NVARCHAR (80) NULL,
    [Address]      NVARCHAR (70) NULL,
    [City]         NVARCHAR (40) NULL,
    [State]        NVARCHAR (40) NULL,
    [Country]      NVARCHAR (40) NULL,
    [PostalCode]   NVARCHAR (10) NULL,
    [Phone]        NVARCHAR (24) NULL,
    [Fax]          NVARCHAR (24) NULL,
    [Email]        NVARCHAR (60) NOT NULL,
    [SupportRepId] INT           NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    FOREIGN KEY ([SupportRepId]) REFERENCES [dbo].[Employee] ([EmployeeId])
);


GO
CREATE NONCLUSTERED INDEX [IPK_Customer]
    ON [dbo].[Customer]([CustomerId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Employee_Customer]
    ON [dbo].[Customer]([SupportRepId] ASC);

