CREATE PROCEDURE [dbo].[DsmrApi_SelectEnvironmentDailyAverages]
	@sensorId INT,
	@start DATETIME,
	@end   DATETIME
AS
BEGIN
	SELECT [Date],
		   AVG([InsideTemperature]) AS [InsideTemperature],
		   AVG([Oat]) AS [OutsideAirTemperature],
		   AVG([Pressure]) AS [Pressure],
		   AVG([RH]) AS [RH]
	  FROM [dbo].[EnvironmentDataHourlyAverages]
	  WHERE [SensorId] = @sensorId
		AND [Date] >= @start
		AND [Date] <  @end
	  GROUP BY [SensorId], [Date]
	  ORDER BY [Date]
END
