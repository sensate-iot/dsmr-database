CREATE PROCEDURE [dbo].[DsmrProcessor_InsertDataPoint]
	@sensorId INT,
	@powerUsage NUMERIC(38, 6),
	@powerProduction NUMERIC(38, 6),
	@energyUsage NUMERIC(38, 6),
	@energyProduction NUMERIC(38, 6),
	@tariff BIT,
	@gasUsage NUMERIC(38, 6),
	@gasFlow NUMERIC(38, 6),
	@oat NUMERIC(38, 6),
	@temperature NUMERIC(38, 6),
	@pressure NUMERIC(38, 6),
	@rh NUMERIC(38, 6),
	@date DATETIME
AS
BEGIN
	INSERT INTO [dbo].[DataPoints] (
		[SensorId],
		[PowerUsage],
		[PowerProduction],
		[EnergyUsage],
		[EnergyProduction],
		[Tariff],
		[GasUsage],
		[GasFlow],
		[OutsideAirTemperature],
		[Temperature],
		[Pressure],
		[RH],
		[Timestamp]
	) VALUES (
		@sensorId,
		@powerUsage,
		@powerProduction,
		@energyUsage,
		@energyProduction,
		@tariff,
		@gasUsage,
		@gasFlow,
		@oat,
		@temperature,
		@pressure,
		@rh,
		@date
	);
END
