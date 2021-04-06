CREATE PROCEDURE [dbo].[DsmrApi_SelectLastData]
	@sensorId INT
AS
BEGIN
	SELECT TOP (1)
       [PowerUsage]
      ,[PowerProduction]
      ,[EnergyUsage]
      ,[EnergyProduction]
      ,[Tariff]
      ,[GasUsage]
      ,[GasFlow]
      ,[OutsideAirTemperature]
      ,[Temperature]
      ,[Pressure]
      ,[RH]
      ,[Timestamp]
	FROM [dbo].[DataPoints]
    WHERE [SensorId] = @sensorId
	ORDER BY [Timestamp] DESC
END