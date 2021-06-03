CREATE PROCEDURE [dbo].[DsmrApi_SelectEnergyDataBetween]
	@sensorId INT,
	@start DATETIME,
	@end   DATETIME
AS
BEGIN
	DECLARE @minEnergyUsage INT;
	DECLARE @minEnergyProduction INT;

	BEGIN TRANSACTION

	SELECT TOP(1) @minEnergyUsage = [EnergyUsage]
				 ,@minEnergyProduction = [EnergyProduction]
	FROM [dbo].[DataPoints]
	WHERE [Timestamp] >= @start
	  AND [Timestamp] <  @end
	  AND [SensorId] = @sensorId
	ORDER BY [Timestamp] ASC


	SELECT TOP(1) [EnergyUsage] - @minEnergyUsage AS [EnergyUsage]
				 ,[EnergyProduction] - @minEnergyProduction AS [EnergyProduction]
	FROM [dbo].[DataPoints]
	WHERE [Timestamp] >= @start
	  AND [Timestamp] <  @end
	  AND [SensorId] = @sensorId
	ORDER BY [Timestamp] DESC

	COMMIT TRANSACTION
END
