CREATE PROCEDURE [dbo].[sproc_DeleteEmployee]

(
	@EmployeeId int
)

AS
DELETE FROM [Employee]

WHERE
EmployeeId = @EmployeeId