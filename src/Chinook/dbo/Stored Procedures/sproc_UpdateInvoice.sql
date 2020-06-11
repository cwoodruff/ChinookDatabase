CREATE PROCEDURE [dbo].[sproc_UpdateInvoice]
(
	@InvoiceId int,
	@CustomerId int,
	@InvoiceDate datetime,
	@BillingAddress nvarchar (MAX),
	@BillingCity nvarchar (MAX),
	@BillingState nvarchar (MAX),
	@BillingCountry nvarchar (MAX),
	@BillingPostalCode nvarchar (MAX),
	@Total money
)

AS
UPDATE [Invoice]
SET
CustomerId = @CustomerId,
InvoiceDate = @InvoiceDate,
BillingAddress = @BillingAddress,
BillingCity = @BillingCity,
BillingState = @BillingState,
BillingCountry = @BillingCountry,
BillingPostalCode = @BillingPostalCode,
Total = @Total

WHERE
InvoiceId = @InvoiceId