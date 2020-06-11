CREATE PROCEDURE [dbo].[sproc_CheckCustomer]

(
    @CustomerId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Customer]
        WHERE CustomerId = @CustomerId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END