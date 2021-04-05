CREATE VIEW [dbo].[PowerDataHourlyAverages]
AS 
	SELECT CONVERT(DATE, [Timestamp]) AS [Date],
		   DATEPART(HOUR, [Timestamp]) as [Hour],
		   [SensorId],
		   AVG([PowerProduction]) AS [EnergyProduction],
		   AVG([PowerUsage]) AS [EnergyUsage],
		   MAX(CONVERT(INT, [Tariff])) AS [Tariff],
		   AVG([GasFlow]) * 60.0 AS [GasFlow], -- Convert to m3/hour
		   AVG([GasUsage]) AS [GasUsage],
		   AVG([Temperature]) AS [InsideTemperature],
		   AVG([OutsideAirTemperature]) AS [Oat]
	  FROM [dbo].[DataPoints]
	  GROUP BY [SensorId],
			   CONVERT(DATE, [Timestamp]), 
			   DATEPART(HOUR, [Timestamp])
