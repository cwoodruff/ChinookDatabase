CREATE PROCEDURE [dbo].[sproc_InsertInvoice]
(
	@CustomerId int,
	@InvoiceDate datetime,
	@BillingAddress nvarchar (MAX),
	@BillingCity nvarchar (MAX),
	@BillingState nvarchar (MAX),
	@BillingCountry nvarchar (MAX),
	@BillingPostalCode nvarchar (MAX),
	@Total money,
	@InvoiceId  int OUTPUT
)

AS
INSERT INTO [Invoice]
(
	CustomerId,
	InvoiceDate,
	BillingAddress,
	BillingCity,
	BillingState,
	BillingCountry,
	BillingPostalCode,
	Total

)
VALUES
(
	@CustomerId,
	@InvoiceDate,
	@BillingAddress,
	@BillingCity,
	@BillingState,
	@BillingCountry,
	@BillingPostalCode,
	@Total
)


SET @InvoiceId= @@IDENTITY
 Return @InvoiceId