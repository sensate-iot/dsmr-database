CREATE PROCEDURE [dbo].[DsmrApi_SelectHourlyPowerDataAverages]
	@sensorId INT,
	@start DATETIME,
	@end   DATETIME
AS
BEGIN
	SELECT CONVERT(DATE, [Timestamp]) AS [Date],
		   DATEPART(HOUR, [Timestamp]) as [Hour],
		   AVG([PowerProduction]) AS [EnergyProduction],
		   AVG([PowerUsage]) AS [EnergyUsage],
		   AVG([GasFlow]) * 1000.0 AS [GasFlow] -- Convert to liters/min
	  FROM [dbo].[DataPoints]
	  WHERE [Timestamp] >= @start
		AND [Timestamp] < @end
		AND [SensorId] = @sensorId
	  GROUP BY CONVERT(DATE, [Timestamp]), 
			   DATEPART(HOUR, [Timestamp])
	  ORDER BY [Date], [Hour]
END
