CREATE PROCEDURE [dbo].[DsmrApi_ComputeDeviceCapabilities]
	@sensorId INT
AS
BEGIN
	SELECT CONVERT(BIT,
		CASE
			WHEN MIN([EnergyProduction]) - MAX([EnergyProduction]) != 0.0 THEN 1
			ELSE 0
		END) AS [HasSolarCells],

	   CONVERT(BIT,
		CASE
			WHEN MIN([GasUsage]) - MAX([GasUsage]) != 0.0 THEN 1
			ELSE 0
		END) AS [HasGasMeter]
	FROM [dbo].[DataPoints]
	WHERE [SensorId] = @sensorId
	  AND [Timestamp] >= DATEADD(MONTH, -1, GETDATE())
END
