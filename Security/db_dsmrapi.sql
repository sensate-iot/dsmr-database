CREATE ROLE [db_dsmrapi]
GO

GRANT EXECUTE ON [dbo].[DsmrApi_SelectDataPoints] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectEnvironmentDailyAverages] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectHourlyEnvironmentDataAverages] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectHourlyPowerDataAverages] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectLastData] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectPowerDailyAverages] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectWeeklyHigh] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectPowerDataByHour] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectEnergyDataBetween] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_ComputeDeviceCapabilities] TO [db_dsmrapi]
GO
GRANT EXECUTE ON [dbo].[DsmrApi_SelectAverageEnergyDataPerHour] TO [db_dsmrapi]
GO
