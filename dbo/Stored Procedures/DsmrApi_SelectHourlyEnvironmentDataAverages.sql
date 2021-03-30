CREATE PROCEDURE [dbo].[DsmrApi_SelectHourlyEnvironmentDataAverages]
	@sensorId INT,
	@start DATETIME,
	@end   DATETIME
AS
BEGIN
	SELECT CONVERT(DATE, [Timestamp]) AS [Date],
		   DATEPART(HOUR, [Timestamp]) as [Hour],
		   AVG([Temperature]) AS [InsideTemperature],
		   AVG([OutsideAirTemperature]) AS [OutsideAirTemperature],
		   AVG([Pressure]) AS [Pressure],
		   AVG([RH]) AS [RH]
	  FROM [dbo].[DataPoints]
	  WHERE [Timestamp] >= @start
		AND [Timestamp] < @end
		AND [SensorId] = @sensorId
	  GROUP BY CONVERT(DATE, [Timestamp]), 
			   DATEPART(HOUR, [Timestamp])
	  ORDER BY [Date], [Hour]
END