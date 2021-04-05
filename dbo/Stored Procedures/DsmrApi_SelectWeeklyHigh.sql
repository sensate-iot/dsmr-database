CREATE PROCEDURE [dbo].[DsmrApi_SelectWeeklyHigh]
	@sensorId INT
AS
BEGIN 
	SELECT MAX([PowerUsage]) AS [PowerUsage],
		   MAX([PowerProduction]) AS [PowerProduction],
		   MAX([GasFlow]) * 1000.0 AS [GasFlow], -- In liters/minute
		   MAX([Temperature]) AS [Temperature],
		   MAX([OutsideAirTemperature]) AS [Oat]
	  FROM [dbo].[DataPoints]
	  WHERE [SensorId] = @sensorId
		AND [Timestamp] >= DATEADD(DAY, -7, GETUTCDATE())
END
