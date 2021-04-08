CREATE PROCEDURE [dbo].[DsmrProcessor_SelectLastProcessedBySensorId]
	@sensorId INT
AS
BEGIN
	SELECT TOP(1) @sensorId AS [SensorId],
	              [Start],
	              [End]
	FROM [dbo].[ProcessingHistory]
	WHERE [SensorId] = @sensorId
	ORDER BY [End] DESC
END