--CARO_depreciation_information
INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated])
     VALUES
           ('HW2010'
           ,'14% per year'
           ,CURRENT_TIMESTAMP)
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		   ,[categories_applied]
		   ,[deprec_formula])
     VALUES
           ('TEST0001'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		   ,'[Software],[Hardware]'
		   ,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		   ,[categories_applied]
		   ,[deprec_formula])
     VALUES
           ('TEST0003'
           ,'PARSE TEST'
           ,CURRENT_TIMESTAMP
		   ,'[Software]'
		   ,']sadasasasd12312312 + asdassadasdsad')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA111'
           ,'10% per year'
           ,CURRENT_TIMESTAMP
		,0.10
		,'PYEAR'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
		,[deprec_custom_mode]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA112'
           ,'7% per day'
		,1
           ,CURRENT_TIMESTAMP
		,0.07
		,'PDAY'
		,'[Funiture],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA113'
           ,'14% per month'
           ,CURRENT_TIMESTAMP
		,0.14
		,'PMONTH'
		,'[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA114'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		,'[Software],[Furniture]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA115'
           ,'10% per year'
           ,CURRENT_TIMESTAMP
		,0.10
		,'PYEAR'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA116'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		,'[Software]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA117'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA118'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA119'
           ,'TESTING DESCRIPTION'
           ,CURRENT_TIMESTAMP
		,'[Furniture]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA120'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA121'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA122'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA123'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
		,[deprec_custom_mode]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA124'
           ,'5% per month'
		,1
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA125'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA126'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA127'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA128'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA129'
           ,'5% per month'
           ,CURRENT_TIMESTAMP
		,0.05
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

INSERT INTO [dbo].[CARO_depreciation_information]
           ([deprec_info_id]
           ,[deprec_desc]
           ,[deprec_updated]
		,[deprec_rate]
		,[time_interval_id]
		,[categories_applied]
		,[deprec_formula])
     VALUES
           ('AAA130'
           ,'10% per month'
           ,CURRENT_TIMESTAMP
		,0.10
		,'PMONTH'
		,'[Software],[Hardware]'
		,'[cost] - ([cost] * 0.2 * ([currdate.month]-[purchase_date.month]))')
GO

