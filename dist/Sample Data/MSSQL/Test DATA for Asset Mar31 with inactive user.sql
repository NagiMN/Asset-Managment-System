USE [CAROAssetManagement]
GO


INSERT INTO [dbo].[CARO_clearance_level]
           ([clearance_level]
           ,[level_desc])
     VALUES
           (0
           ,'Level 0: Admin')
GO

INSERT INTO [dbo].[CARO_clearance_level]
           ([clearance_level]
           ,[level_desc])
     VALUES
           (1
           ,'Level 1: Operational User')
GO





INSERT INTO [dbo].[CARO_job_category]
           ([job_category_id]
           ,[job_title])
     VALUES
           ('A'
           ,'Admin')
GO
 
INSERT INTO [dbo].[CARO_job_category]
           ([job_category_id]
           ,[job_title])
     VALUES
           ('O'
           ,'Operational User')
GO





--vendor
INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('VV001'
           ,'First Vendor'
           ,'Sample Street SW'
           ,'1234567890')
GO


INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('VV002'
           ,'Second Vendor'
           ,'Sample Street 2Ave SW'
           ,'2222222222')
GO


INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('VV003'
           ,'Third Vendor'
           ,'Sample Street 3Ave SW'
           ,'3333333333')
GO

--brand
INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('BB001'
           ,'First Brand')
GO

--brand
INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('BB002'
           ,'Second Brand')
GO


USE [CAROAssetManagement]
GO

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

INSERT INTO [dbo].[CARO_asset_category]
           ([asset_category]
           ,[asset_category_description])
     VALUES
           ('H'
           ,'Hardware')
GO


INSERT INTO [dbo].[CARO_asset_category]
           ([asset_category]
           ,[asset_category_description])
     VALUES
           ('S'
           ,'Software')
GO


INSERT INTO [dbo].[CARO_asset_category]
           ([asset_category]
           ,[asset_category_description])
     VALUES
           ('F'
           ,'Furniture')
GO


USE [CAROAssetManagement]
GO

INSERT INTO [dbo].[CARO_location]
           ([location_id]
           ,[location_name]
           ,[location_address]
           ,[location_phone]
           ,[location_email]
           ,[number_of_staff])
     VALUES
           ('BC_Rich'
           ,'Richmond British Columbia'
           ,'Viking Way'
           ,'1234567890'
           , 'bc@gmail.com'
           ,'30')
GO

USE [CAROAssetManagement]
GO

INSERT INTO [dbo].[CARO_location]
           ([location_id]
           ,[location_name]
           ,[location_address]
           ,[location_phone]
           ,[location_email]
           ,[number_of_staff])
     VALUES
           ('AB_Edmon'
           ,'Edmonton Alberta'
           ,'17225 109 Ave NW'
           ,'7804899100'
           , 'Edmonton@caro.ca'
           ,'30')
GO


INSERT INTO [dbo].[CARO_system_user]
           ([personel_id]
           ,[job_category_id]
           ,[user_name]
           ,[user_password]
           ,[user_first_name]
           ,[user_last_name]
           ,[date_of_hire]
		   ,[user_phone_number]
           ,[user_email]
		   ,[isActive]
		   ,[clearance_level])
     VALUES
           (0000001
		   ,'A' --admin
		   ,'john'
		   ,'password'
		   ,'John'
		   ,'Doe'
		   , GETDATE()
		   ,'1234567890'
		   ,'JohnDoe@gmail.com'
		   ,1
		   ,0)
GO


INSERT INTO [dbo].[CARO_system_user]
           ([personel_id]
           ,[job_category_id]
           ,[user_name]
           ,[user_password]
           ,[user_first_name]
           ,[user_last_name]
           ,[date_of_hire]
		   ,[user_phone_number]
           ,[user_email]
		   ,[isActive]
		   ,[clearance_level])
     VALUES
           (90000001
		   ,'A' --admin
		   ,'test'
		   ,'test'
		   ,'test'
		   ,'test'
		   , GETDATE()
		   ,'1234567890'
		   ,'test@gmail.com'
		   ,1
		   ,0)
GO


INSERT INTO [dbo].[CARO_system_user]
           ([personel_id]
           ,[job_category_id]
           ,[user_name]
           ,[user_password]
           ,[user_first_name]
           ,[user_last_name]
           ,[date_of_hire]
		   ,[user_phone_number]
           ,[user_email]
		   ,[isActive]
		   ,[clearance_level])
     VALUES
           (999001
		   ,'O' --operational
		   ,'inactive'
		   ,'inactive'
		   ,'in'
		   ,'active'
		   , GETDATE()
		   ,'1234567890'
		   ,'test@gmail.com'
		   ,0
		   ,1)
GO



INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[vendor_id] 
      ,[brand_id] 
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[dimension]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[hostname]
      ,[service_tag] 
      ,[comment_on_asset] 
      ,[added_by] 
      ,[photo_link] )
	VALUES
		('A0001'
		,'VV001'
		,'BB001'
		,'BC_Rich'
		,'HW2010'
		,'H'
		,CURRENT_TIMESTAMP
		,888.69
		,null
		,'15 inch'
		,'128.0.0.1'
		,'MAC-123456'
		,'SnumberCP123'
		,'TEST Laptop'
		,'General laptop 15 inch'
		,'hostname:localhost'
		,'service_tag'
		,'refer to DEC2010 minute'
		,'000001'
		,'https://www.caro.ca/wp-content/uploads/2020/07/Transparent-CARO-Logo-e1594247594500.png')
GO



INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[vendor_id] 
      ,[brand_id] 
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[dimension]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[hostname]
      ,[service_tag] 
      ,[comment_on_asset] 
      ,[added_by] 
      ,[photo_link] )
	VALUES
		('A0002'
		,'VV001'
		,'BB001'
		,'BC_Rich'
		,'HW2010'
		,'H'
		,CURRENT_TIMESTAMP
		,888.69
		,null
		,'15 inch'
		,'128.0.0.1'
		,'MAC-123456'
		,'SnumberCP123'
		,'TEST Laptop'
		,'General laptop 15 inch'
		,'hostname:localhost'
		,'service_tag'
		,'refer to DEC2010 minute'
		,'000001'
		,'https://www.caro.ca/wp-content/uploads/2020/07/Transparent-CARO-Logo-e1594247594500.png')
GO


INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[vendor_id] 
      ,[brand_id] 
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[dimension]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[hostname]
      ,[service_tag] 
      ,[comment_on_asset] 
      ,[added_by] 
      ,[photo_link] )
	VALUES
		('A0003'
		,'VV003'
		,'BB002'
		,'BC_Rich'
		,'HW2010'
		,'H'
		,CURRENT_TIMESTAMP
		,888.69
		,null
		,'15 inch'
		,'128.0.0.1'
		,'MAC-123456'
		,'SnumberCP123'
		,'TEST Laptop'
		,'General laptop 15 inch'
		,'hostname:localhost'
		,'service_tag'
		,'refer to DEC2010 minute'
		,'000001'
		,'https://www.caro.ca/wp-content/uploads/2020/07/Transparent-CARO-Logo-e1594247594500.png')
GO



USE [CAROAssetManagement]
GO

INSERT INTO [dbo].[CARO_asset]
           ([asset_id]
		   ,[asset_name])
     VALUES
           ('111'
		   ,'testMin')
GO


INSERT INTO [dbo].[CARO_assigned_to]
           ([personel_id]
		   ,[asset_id])
     VALUES
           ('0000001'
		   ,'A0001')
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
           ('TestDeprec'
           ,'Test:10% per year'
           ,0
           ,null
           ,0.10
           ,'PYEAR'
           ,null
           ,null)
GO





INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[vendor_id] 
      ,[brand_id] 
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[dimension]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[hostname]
      ,[service_tag] 
      ,[comment_on_asset] 
      ,[added_by] 
      ,[photo_link] )
	VALUES
		('A0004'
		,'VV002'
		,'BB002'
		,'BC_Rich'
		,'TestDeprec'
		,'H'
		,'2015-10-11'
		,5000
		,null
		,'15 inch'
		,'128.0.0.1'
		,'MAC-123456'
		,'SnumberCP999'
		,'TEST Laptop'
		,'General laptop 10 inch'
		,'hostname:localhost'
		,'service_tag'
		,'refer to DEC2010 minute'
		,'000001'
		,'https://www.caro.ca/wp-content/uploads/2020/07/Transparent-CARO-Logo-e1594247594500.png')
GO

