	SELECT    
		[command]
		,[percent_complete]
		,[total_elapsed_time]
		,[estimated_completion_time]
		,[start_time]
		,CONVERT(VARCHAR(20) ,DATEADD(MS ,[estimated_completion_time] ,GETDATE()) ,20) AS [ETA_COMPLETION_TIME]
		,CONVERT(NUMERIC(6 ,2) ,[total_elapsed_time] / 1000.0 / 60.0) AS [Elapsed_MIN]
		,CONVERT(NUMERIC(6 ,2) ,[estimated_completion_time] / 1000.0 / 60.0) AS [Remaning_ETA_MIN]
		,CONVERT(NUMERIC(6 ,2) ,[estimated_completion_time] / 1000.0 / 60.0/ 60.0) AS [ETA_Hours]
	FROM [sys].[dm_exec_requests]
	WHERE [command] IN ('RESTORE DATABASE','BACKUP DATABASE')
