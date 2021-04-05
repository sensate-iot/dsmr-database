CREATE VIEW [dbo].[EnvironmentDataHourlyAverages]
AS
	SELECT CONVERT(DATE, [Timestamp]) AS [Date],
		   DATEPART(HOUR, [Timestamp]) as [Hour],
		   [SensorId],
		   AVG([RH]) AS [RH],
		   AVG([Pressure]) AS [Pressure],
		   AVG([Temperature]) AS [InsideTemperature],
		   AVG([OutsideAirTemperature]) AS [Oat]
	  FROM [dbo].[DataPoints]
	  GROUP BY [SensorId],
			   CONVERT(DATE, [Timestamp]), 
			   DATEPART(HOUR, [Timestamp])
