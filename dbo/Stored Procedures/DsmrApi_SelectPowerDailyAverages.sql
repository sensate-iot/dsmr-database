CREATE PROCEDURE [dbo].[DsmrApi_SelectPowerDailyAverages]
	@sensorId INT,
	@start    DATETIME,
	@end      DATETIME
AS
BEGIN
	SELECT [Date],
		   SUM([EnergyProduction]) AS [EnergyProduction],
		   SUM([EnergyUsage]) AS [EnergyUsage],
		   SUM([GasFlow]) AS [GasFlow] -- Sum total gas usage
	  FROM [dbo].[PowerDataHourlyAverages]
	  WHERE [SensorId] = @sensorId
		AND [Date] >= @start
		AND [Date] <  @end
	  GROUP BY [SensorId], [Date]
	  ORDER BY [Date]
END
