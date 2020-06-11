CREATE PROCEDURE [dbo].[sproc_GetEmployeeReportTo]

(
    @EmployeeId int
)

AS
SELECT CAST((SELECT * FROM [Employee] WHERE ReportsTo = (SELECT ReportsTo FROM dbo.Employee WHERE  EmployeeId = @EmployeeId) FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA