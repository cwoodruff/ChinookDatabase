CREATE PROCEDURE [dbo].[sproc_GetEmployeeDetails]

(
	@EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE EmployeeId = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA