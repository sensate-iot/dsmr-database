CREATE ROLE [db_processor]
GO

GRANT EXECUTE ON [dbo].[DsmrProcessor_BulkInsertDataPoints] TO [db_processor]
GO
GRANT EXECUTE ON [dbo].[DsmrProcessor_FinalizeBatch] TO [db_processor]
GO
GRANT EXECUTE ON [dbo].[DsmrProcessor_InsertDataPoint] TO [db_processor]
GO
GRANT EXECUTE ON [dbo].[DsmrProcessor_InsertProcessingTimestamp] TO [db_processor]
GO
GRANT EXECUTE ON [dbo].[DsmrProcessor_SelectLastProcessedBySensorId] TO [db_processor]
GO
GRANT EXECUTE ON TYPE::[dbo].[DataPoint] TO [db_processor]
GO
