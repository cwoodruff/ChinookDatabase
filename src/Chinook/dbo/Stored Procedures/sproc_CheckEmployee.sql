CREATE PROCEDURE [dbo].[sproc_CheckEmployee]

(
    @EmployeeId int
)

AS
SELECT CASE WHEN EXISTS (
        SELECT *
        FROM [Employee]
        WHERE EmployeeId = @EmployeeId
    )
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END