CREATE PROCEDURE [dbo].[DsmrApi_SelectEnergyDataBetween]
	@sensorId INT,
	@start DATETIME,
	@end   DATETIME
AS
BEGIN
	DECLARE @minEnergyUsage NUMERIC(38, 6);
	DECLARE @minEnergyProduction NUMERIC(38, 6);
	DECLARE @minGasUsage NUMERIC(38, 6);

	BEGIN TRANSACTION

	SELECT TOP(1) @minEnergyUsage = [EnergyUsage]
				 ,@minEnergyProduction = [EnergyProduction]
				 ,@minGasUsage = [GasUsage]
	FROM [dbo].[DataPoints]
	WHERE [Timestamp] >= @start
	  AND [Timestamp] <  @end
	  AND [SensorId] = @sensorId
	ORDER BY [Timestamp] ASC


	SELECT TOP(1) [EnergyUsage] - @minEnergyUsage AS [EnergyUsage]
				 ,[EnergyProduction] - @minEnergyProduction AS [EnergyProduction]
				 ,[GasUsage] - @minGasUsage AS [GasUsage]
	FROM [dbo].[DataPoints]
	WHERE [Timestamp] >= @start
	  AND [Timestamp] <  @end
	  AND [SensorId] = @sensorId
	ORDER BY [Timestamp] DESC

	COMMIT TRANSACTION
END
