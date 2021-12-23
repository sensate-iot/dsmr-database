CREATE PROCEDURE [dbo].[DsmrApi_SelectAverageEnergyDataPerHour]
	@sensorId INT,
	@start DATETIME,
	@end DATETIME
AS
BEGIN
	SELECT DATEPART(HOUR, [Timestamp]) as [Hour],
		   AVG([PowerUsage]) AS [AveragePowerUsage],
		   AVG([PowerProduction]) AS [AveragePowerProduction],
		   AVG([GasFlow]) * 60.0 * 1000.0 AS [AverageGasFlow] -- Convert gas flow to L/min
	FROM [dbo].[DataPoints]
	WHERE [SensorId] = @sensorId
	  AND [Timestamp] >= @start
	  AND [Timestamp] < @end
	GROUP BY [SensorId],
			 DATEPART(HOUR, [Timestamp])
	ORDER BY [Hour]
END
