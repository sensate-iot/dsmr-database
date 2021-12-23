CREATE PROCEDURE [dbo].[DsmrApi_SelectAverageEnergyPerHour]
	@sensorId INT,
	@start DATETIME,
	@end DATETIME
AS
BEGIN
	SELECT   [Hour]
			,AVG([EnergyUsage]) AS [Usage]
			,AVG([EnergyProduction]) AS [Production]
			,AVG([GasFlow]) * 1000 AS [GasFlow]
	FROM [dbo].[PowerDataHourlyAverages]
	WHERE [Date] >= CONVERT(DATE, @start)
		AND [Date] <  CONVERT(DATE, @end)
		AND [SensorId] = @sensorId
	GROUP BY [Hour]
	ORDER BY [Hour] ASC
END
