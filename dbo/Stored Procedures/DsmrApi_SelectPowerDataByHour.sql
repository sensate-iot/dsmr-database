CREATE PROCEDURE [dbo].[DsmrApi_SelectPowerDataByHour]
	@sensorId INT,
	@start    DATETIME,
	@end      DATETIME
AS
BEGIN
	SELECT [Hour]
		  ,SUM([EnergyUsage]) AS [Usage]
		  ,SUM([EnergyProduction]) AS [Production]
	FROM [dbo].[PowerDataHourlyAverages]
	WHERE [Date] >= CONVERT(DATE, @start)
	  AND [Date] < CONVERT(DATE, @end)
	  AND [SensorId] = @sensorId
	GROUP BY [Hour]
	ORDER BY [Hour] ASC
END
