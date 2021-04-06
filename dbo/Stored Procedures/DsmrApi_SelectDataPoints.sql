CREATE PROCEDURE [dbo].[DsmrApi_SelectDataPoints]
	@sensorId INT,
	@start    DATETIME,
	@end      DATETIME
AS
BEGIN
	SELECT [PowerUsage]
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
	  WHERE [Timestamp] >= @start
	    AND [Timestamp] <  @end
		AND [SensorId] = @sensorId
END
