CREATE TABLE [dbo].[InvoiceLine] (
    [InvoiceLineId] INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceId]     INT             NOT NULL,
    [TrackId]       INT             NOT NULL,
    [UnitPrice]     NUMERIC (10, 2) NOT NULL,
    [Quantity]      INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([InvoiceLineId] ASC),
    FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice] ([InvoiceId]),
    FOREIGN KEY ([TrackId]) REFERENCES [dbo].[Track] ([TrackId])
);


GO
CREATE NONCLUSTERED INDEX [IPK_InvoiceLine]
    ON [dbo].[InvoiceLine]([InvoiceLineId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ProductItem_InvoiceLine]
    ON [dbo].[InvoiceLine]([TrackId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Invoice_InvoiceLine]
    ON [dbo].[InvoiceLine]([InvoiceId] ASC);

