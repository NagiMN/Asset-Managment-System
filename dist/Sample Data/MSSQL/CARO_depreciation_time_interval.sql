--CARO_depreciation_time_interval

INSERT INTO [dbo].[CARO_depreciation_time_interval]
           ([time_interval_id]
           ,[time_interval_desc]
           ,[time_interval_value])
     VALUES
           ('PYEAR'
           ,'Per Year'
           ,365)
GO

INSERT INTO [dbo].[CARO_depreciation_time_interval]
           ([time_interval_id]
           ,[time_interval_desc]
           ,[time_interval_value])
     VALUES
           ('PMONTH'
           ,'Per Month'
           ,12)
GO

INSERT INTO [dbo].[CARO_depreciation_time_interval]
           ([time_interval_id]
           ,[time_interval_desc]
           ,[time_interval_value])
     VALUES
           ('PDAY'
           ,'Per Day'
           ,1)
GO