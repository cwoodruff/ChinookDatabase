CREATE PROCEDURE [dbo].[sproc_GetEmployeeDirectReports]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE ReportsTo = @EmployeeId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA