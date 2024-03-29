﻿CREATE TABLE [dbo].[ProcessingHistory]
(
	[Id]                        BIGINT          NOT NULL IDENTITY (1, 1) NOT FOR REPLICATION,
	[SensorId]                  INT	            NOT NULL,
	[Count]	                    INT	            NOT NULL DEFAULT(0),
	[Start]	                    DATETIME        NOT NULL,
	[End]                       DATETIME        NOT NULL,
	[Timestamp]                 DATETIME        NOT NULL DEFAULT(GETDATE())

	CONSTRAINT [PK_ProcessingHistory] PRIMARY KEY NONCLUSTERED ([Id] ASC)
	INDEX [IX_ProcessingHistory_SensorId] NONCLUSTERED ([SensorId])
	INDEX [IX_ProcessingHistory_Timestamp] NONCLUSTERED ([Timestamp] ASC)
);

