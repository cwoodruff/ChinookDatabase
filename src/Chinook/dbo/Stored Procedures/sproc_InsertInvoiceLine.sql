CREATE PROCEDURE [dbo].[sproc_InsertInvoiceLine]
(
	@InvoiceId int,
	@TrackId int,
	@UnitPrice money,
	@Quantity int,
	@InvoiceLineId  int OUTPUT
)

AS
INSERT INTO [InvoiceLine]
(
	InvoiceId,
	TrackId,
	UnitPrice,
	Quantity

)
VALUES
(
	@InvoiceId,
	@TrackId,
	@UnitPrice,
	@Quantity
)


SET @InvoiceLineId= @@IDENTITY
 Return @InvoiceLineId