CREATE PROCEDURE [dbo].[sproc_UpdateInvoiceLine]
(
	@InvoiceLineId int,
	@InvoiceId int,
	@TrackId int,
	@UnitPrice money,
	@Quantity int
)

AS
UPDATE [InvoiceLine]
SET
InvoiceId = @InvoiceId,
TrackId = @TrackId,
UnitPrice = @UnitPrice,
Quantity = @Quantity

WHERE
InvoiceLineId = @InvoiceLineId