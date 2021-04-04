CREATE PROCEDURE [dbo].[DsmrApi_SelectPowerDailyAverages]
	@sensorId INT,
	@start    DATETIME,
	@end      DATETIME
AS
BEGIN
	SELECT [Date],
		   SUM([EnergyProduction]) AS [EnergyProduction],
		   SUM([EnergyUsage]) AS [EnergyUsage],
		   AVG([GasFlow]) * 24 AS [GasFlow] -- m3/hour * 24 hours = m3 used in a day
	  FROM [dbo].[PowerDataHourlyAverages]
	  WHERE [SensorId] = @sensorId
		AND [Date] >= @start
		AND [Date] <  @end
	  GROUP BY [SensorId], [Date]
	  ORDER BY [Date]
END
