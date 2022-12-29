--CARO_depreciation_time_interval
USE [CAROAssetManagement]
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


USE [CAROAssetManagement]
GO
--dbo.CARO_job_category sample data


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



--CARO_clearance_level
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





--CARO_system_user
USE [CAROAssetManagement]
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
		,[clearance_level]
		,[isActive])
     VALUES
           (2356789
		   ,'A'
		   ,'Rick'
		   ,'James'
		   ,'RickisNumber1'
		   ,'James'
		   ,'2000-03-14'
		   ,'1234567890'
		   ,'RickHames@gmail.com'
		   ,0
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (2356999
		   ,'O'
		   ,'Ela'
		   ,'James'
		   ,'Ela'
		   ,'James'
		   ,'2015-03-14'
		   ,'1234567890'
		   ,'ElaJames@gmail.com'
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
		,[clearance_level]
		,[isActive])
     VALUES
           (2354444
		   ,'O'
		   ,'Sue'
		   ,'Bird'
		   ,'Suzy'
		   ,'Birdy'
		   ,'2011-01-14'
		   ,'1234567890'
		   ,'SueBird@gmail.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (2351236
		   ,'O'
		   ,'Helen'
		   ,'James'
		   ,'Helen'
		   ,'James'
		   ,'2020-03-14'
		   ,'1234567890'
		   ,'HelenHames@gmail.com'
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
		,[clearance_level]
		,[isActive])
     VALUES
           (2351111
		   ,'O'
		   ,'Rick'
		   ,'Smoothy'
		   ,'Ricky'
		   ,'Smooth'
		   ,'2022-03-14'
		   ,'1234567890'
		   ,'Rick@gmail.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (4282722
		   ,'O'
		   ,'Samantha'
		   ,'Rue'
		   ,'Sammy'
		   ,'Rue'
		   ,'2007-03-14'
		   ,'1234567890'
		   ,'Sams@gmail.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (34575
		   ,'O'
		   ,'Chris'
		   ,'Brown'
		   ,'Breezy'
		   ,'fenty'
		   ,'2003-03-14'
		   ,'1234567890'
		   ,'Chriss@gmail.com'
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
		,[clearance_level]
		,[isActive])
     VALUES
           (253939
		   ,'O'
		   ,'Betty'
		   ,'White'
		   ,'Betty'
		   ,'White'
		   ,'1980-03-14'
		   ,'1234567890'
		   ,'BettyWhite@gmail.com'
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
		,[clearance_level]
		,[isActive])
     VALUES
           (3527252
		   ,'O'
		   ,'Mike'
		   ,'Tyson'
		   ,'MikeT'
		   ,'Tyson'
		   ,'1990-07-14'
		   ,'1234567890'
		   ,'MikeTy@gmail.com'
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
		,[clearance_level]
		,[isActive])
     VALUES
           (935343
		   ,'A'
		   ,'Karen'
		   ,'OHearn'
		   ,'Karen'
		   ,'oh'
		   ,'2010-03-14'
		   ,'1234567890'
		   ,'Karens@gmail.com'
		   ,0
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (1543838
		   ,'O'
		   ,'Smithy'
		   ,'Wade'
		   ,'Smith'
		   ,'#$#@12DD'
		   ,'2003-03-14'
		   ,'1234567890'
		   ,'Smiths@gmail.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (000005
		   ,'A'
		   ,'admin'
		   ,'password'
		   ,'admin'
		   ,'admin'
		   ,GETDATE()
		   ,'1234567890'
		   ,'admin@admin.com'
		   ,0
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (000002
		   ,'A'
		   ,'admin1'
		   ,'password'
		   ,'admin1'
		   ,'admin1'
		   ,GETDATE()
		   ,'0234567890'
		   ,'admin1@admin.com'
		   ,0
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (0000100
		   ,'O'
		   ,'JSmith'
		   ,'password'
		   ,'John'
		   ,'Smith'
		   ,GETDATE()
		   ,'1111111111'
		   ,'jsmith@user.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (0000101
		   ,'O'
		   ,'NThompson'
		   ,'password'
		   ,'Nathan'
		   ,'Thompson'
		   ,GETDATE()
		   ,'2222222222'
		   ,'nthompson@user.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (0000102
		   ,'O'
		   ,'MJohnson'
		   ,'password'
		   ,'Mike'
		   ,'Johnson'
		   ,GETDATE()
		   ,'2222222222'
		   ,'mjohnson@user.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (0000103
		   ,'O'
		   ,'TParker'
		   ,'password'
		   ,'Tom'
		   ,'Parker'
		   ,GETDATE()
		   ,'4444444444'
		   ,'tparker@user.com'
		   ,1
		   ,1)
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
		,[clearance_level]
		,[isActive])
     VALUES
           (0000104
		   ,'O'
		   ,'GWilliams'
		   ,'password'
		   ,'George'
		   ,'Williams'
		   ,GETDATE()
		   ,'5555555555'
		   ,'gwilliams@user.com'
		   ,1
		   ,1)
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


--CARO_location

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
           ,'#110 – 4011 Viking Way Richmond'
           ,'6042791499 '
           , 'Richmond@caro.ca'
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
           ,'17225 109 Ave NW Edmonton'
           ,'7804899100'
           , 'Edmonton@caro.ca'
           ,'24')
GO


INSERT INTO [dbo].[CARO_location]
           ([location_id]
           ,[location_name]
           ,[location_address]
           ,[location_phone]
           ,[location_email]
           ,[number_of_staff])
     VALUES
           ('BC_Kelowna'
           ,'Kelowna British Columbia'
           ,'#102 – 3677 Highway 97N Kelowna'
           ,'2507659646'
           ,'Kelowna@caro.ca'
           ,'25')
GO

INSERT INTO [dbo].[CARO_location]
           ([location_id]
           ,[location_name]
           ,[location_address]
           ,[location_phone]
           ,[location_email]
           ,[number_of_staff])
     VALUES
           ('BC_Burnaby'
           ,'Burnaby British Columbia'
           ,'#108 – 4475 Wayburne Drive Burnaby'
           ,'6062791499'
           ,'Richmond@caro.ca'
           ,'20')
GO

--CARO_asset_category

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


--CARO_brand
INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('HH001'
           ,'Asus')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('HH002'
           ,'Lenovo')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('HH003'
           ,'MSI')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('HH004'
           ,'Dell')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('FF001'
           ,'Maiden Home')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('FF002'
           ,'Floyd')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('SS001'
           ,'IBM')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('SS002'
           ,'Microsoft Office')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('SS003'
           ,'SAP')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('SS004'
           ,'Oracle')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('B1'
           ,'Apple')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('B2'
           ,'Adobe')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('B3'
           ,'Norton')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('B4'
           ,'Samsung')
GO

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('B5'
           ,'Google')
GO

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

INSERT INTO [dbo].[CARO_brand]
           ([brand_id]
           ,[brand_name])
     VALUES
           ('NN000'
           ,'No Brand')
GO



--CARO_vendor
USE [CAROAssetManagement]
GO

INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('V5'
           ,'Amazon'
           ,'Sample Street SW'
           ,'1234567890')
GO

INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('V4'
           ,'Bell'
           ,'Sample Street SW'
           ,'1234567890')
GO

INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('V3'
           ,'Walmart'
           ,'Sample Street SW'
           ,'1234567890')
GO

INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('V2'
           ,'Costco'
           ,'Sample Street SW'
           ,'1234567890')
GO

INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_address]
           ,[vendor_phone_number])
     VALUES
           ('V1'
           ,'Best Buy'
           ,'Sample Street SW'
           ,'1234567890')
GO

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


INSERT INTO [dbo].[CARO_vendor]
           ([vendor_id]
           ,[vendor_name]
           ,[vendor_phone_number])
     VALUES
           ('VV000'
           ,'No Vendor'
		   ,'0000000000')
GO



--CARO_depreciation_information

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


--CARO_asset



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
		('ABC123'
		,'VV003'
		,'HH001'
		,'BC_Rich'
		,'AAA115'
		,'H'
		,'2022-02-06'
		,1000.99
		,900
		,'15 inch'
		,'128.0.0.1'
		,'0000-9582'
		,'98813120'
		,'Work Laptop'
		,'General laptop 15 inch'
		,'hostname:localhost'
		,'service_tag'
		,'Work computer'
		,2356789
		,'https://images.unsplash.com/photo-1531063626275-e6680b864755?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
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
		('ABC124'
		,'VV002'
		,'FF001'
		,'AB_Edmon'
		,'AAA112'
		,'F'
		,CURRENT_TIMESTAMP
		,750.00
		,600
		,null
		,null
		,null
		,null
		,'Kitchen Table'
		,'Table for the Kitchen'
		,null
		,'service_tag'
		,'Kitchen table'
		,3527252
		,'https://images.unsplash.com/photo-1601628828688-632f38a5a7d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=709&q=80')
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
		('ABC125'
		,'VV001'
		,'SS004'
		,'AB_Edmon'
		,'AAA130'
		,'S'
		,'2018-09-09'
		,150.00
		,null
		,null
		,null
		,null
		,null
		,'Oracle Software'
		,'Database for the company'
		,null
		,'service_tag'
		,'Database Software'
		,'2356789'
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
		('ABC126'
		,'VV002'
		,'HH004'
		,'AB_Edmon'
		,'AAA120'
		,'H'
		,'2016-02-01'
		,1500.00
		,900.00
		,'17 Inch'
		,'128.0.0.4'
		,'3455-3333'
		,'3332214'
		,'Dell laptop'
		,'Work Laptop'
		,'localhost'
		,'service_tag'
		,'Work laptop'
		,'1543838'
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
		('ABC127'
		,'VV002'
		,'FF001'
		,'BC_Rich'
		,'AAA113'
		,'F'
		,'2019-09-10'
		,1500.00
		,900.00
		,null
		,null
		,null
		,null
		,'Rest station'
		,'Bed to sleep'
		,null
		,'service_tag'
		,'Bed to sleep'
		,2356789
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
		('ABC128'
		,'VV001'
		,'HH003'
		,'AB_Edmon'
		,'AAA120'
		,'H'
		,'2014-02-13'
		,1500.00
		,900.00
		,'17 Inch'
		,'128.0.0.4'
		,'3455-3333'
		,'3332214'
		,'MSI laptop'
		,'Work Laptop'
		,'localhost'
		,'service_tag'
		,'Work laptop'
		,1543838
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
		('ABC129'
		,'VV002'
		,'HH004'
		,'BC_Rich'
		,'AAA120'
		,'H'
		,'2015-05-05'
		,1500.00
		,900.00
		,'17 Inch'
		,'128.0.0.4'
		,'3455-3333'
		,'3332214'
		,'Dell laptop'
		,'Work Laptop'
		,'localhost'
		,'service_tag'
		,'Work laptop'
		,1543838
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
      ,[photo_link]
	,[OS] )
	VALUES
		('ABC130'
		,'VV002'
		,'HH004'
		,'AB_Edmon'
		,'AAA120'
		,'H'
		,'2017-12-31'
		,1500.00
		,900.00
		,'17 Inch'
		,'128.0.0.4'
		,'3455-3333'
		,'3332214'
		,'Dell laptop'
		,'Work Laptop'
		,'localhost'
		,'service_tag'
		,'Work laptop'
		,1543838
		,null
		,'Windows')
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
      ,[photo_link]
	,[OS] )
	VALUES
		('ABC131'
		,'VV002'
		,'HH004'
		,'AB_Edmon'
		,'AAA120'
		,'H'
		,CURRENT_TIMESTAMP
		,2000.00
		,1999.00
		,'17 Inch'
		,'128.0.0.4'
		,'3455-3343'
		,'3932214'
		,'Dell laptop'
		,'Work Laptop'
		,'localhost'
		,'service_tag'
		,'Work laptop'
		,2354444
		,null
		,'Windows')
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
      ,[added_by]
	  ,[OS] )
	VALUES
		('A001'
		,'V1'
		,'B1'
		,'BC_Rich'
		,'AAA115'
		,'H'
		,'2019-11-11'
		,2050.99
		,1500
		,'15 inch'
		,'128.0.0.1'
		,'40:85:1E:1A:CA:6D'
		,'65433120'
		,'Macbook 1'
		,'15 inch Macbook Pro'
		,2354444
		,'MACOS')
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
      ,[added_by]
	  ,[OS]	  )
	VALUES
		('A002'
		,'V1'
		,'B1'
		,'AB_Edmon'
		,'AAA111'
		,'H'
		,CURRENT_TIMESTAMP
		,999.99
		,700
		,'10.5 inch'
		,'128.0.0.1'
		,'0B:F1:42:C9:D9:7F'
		,'65432723'
		,'Ipad 1'
		,'10.5 Ipad Pro'
		,2354444
		,'IpadOS')
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[vendor_id]  
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[added_by]
      ,[comment_on_asset]
	  ,[OS]	  )
	VALUES
		('A003'
		,'V2'
		,'AB_Edmon'
		,'AAA120'
		,'H'
		,CURRENT_TIMESTAMP
		,4000
		,2200
		,'128.0.0.8'
		,'AF:5F:3F:F0:10:74'
		,'6536723'
		,'Desktop PC 1'
		,'Intel Desktop PC'
		,2351236
		,'16GB RAM 2TB Storage'
		,'Windows')
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[brand_id]
	  ,[vendor_id]
      ,[location_id] 
      ,[deprec_info_id] 
      ,[asset_category] 
      ,[purchase_date]
      ,[cost] 
      ,[depreciated_value]
      ,[IP]
      ,[MAC]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc]
      ,[added_by]
      ,[OS] )
	VALUES
		('A004'
		,'B5'
		,'V4'
		,'AB_Edmon'
		,'AAA116'
		,'H'
		,'2011-02-22'
		,700.00
		,500.75
		,'128.33.43.3'
		,'AB:49:82:FA:09:73'
		,'653322133'
		,'Company Phone 1'
		,'Pixel 6'
		,2351236
		,'Android')
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
	  ,[vendor_id]
      ,[location_id]  
      ,[purchase_date]
      ,[cost] 
	  ,[dimension]	  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A005'
		,'V3'
		,'BC_Rich'
		,'2017-05-06'
		,450
		,'17 by 14 by 30 (inch)'
		,'65433120'
		,'F'
		,'Couch'
		,2351236)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
	  ,[vendor_id]
      ,[location_id]  
      ,[deprec_info_id] 
      ,[purchase_date]
      ,[cost]
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A006'
		,'V2'
		,'AB_Edmon'
		,'AAA129'
		,CURRENT_TIMESTAMP
		,50
		,'235322420'
		,'F'
		,'Lamp'
		,2351111)
GO


INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[location_id]  
      ,[deprec_info_id]
      ,[purchase_date]
      ,[cost] 
	  ,[dimension]
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A007'
		,'BC_Rich'
		,'AAA129'
		,CURRENT_TIMESTAMP
		,80
		,'20 by 30 by 18 (inch)'
		,'895453420'
		,'F'
		,'Office Desk'
		,4282722)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[location_id]  
      ,[deprec_info_id] 
      ,[purchase_date]
      ,[cost]
	  ,[dimension]	  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A008'
		,'BC_Rich'
		,'AAA124'
		,'2000-08-12'
		,80
		,'15 by 12 by 4 (inch)'
		,'233242230'
		,'F'
		,'Table'
		,4282722)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
      ,[location_id]  
      ,[deprec_info_id]
      ,[purchase_date]
      ,[cost]  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A009'
		,'BC_Rich'
		,'AAA120'
		,CURRENT_TIMESTAMP
		,30
		,'732312230'
		,'F'
		,'Office Chair'
		,34575)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
	  ,[vendor_id]
      ,[location_id]  
      ,[deprec_info_id] 
      ,[purchase_date]
      ,[cost]  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A010'
		,'V4'
		,'AB_Edmon'
		,'AAA120'
		,CURRENT_TIMESTAMP
		,200
		,'732312230'
		,'F'
		,'Vaccum'
		,3527252)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
	  ,[vendor_id]
      ,[location_id]  
      ,[deprec_info_id] 
      ,[purchase_date]
      ,[cost]  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A011'
		,'V5'
		,'AB_Edmon'
		,'AAA112'
		,'2015-06-06'
		,400
		,'45432230'
		,'F'
		,'Massage Chair'
		,000002)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id]
	  ,[vendor_id]
      ,[location_id]  
      ,[deprec_info_id] 
      ,[purchase_date]
      ,[cost]  
      ,[serial_number]
	  ,[asset_category] 
      ,[asset_name]
      ,[added_by])
	VALUES
		('A012'
		,'V5'
		,'BC_Rich'
		,'AAA113'
		,CURRENT_TIMESTAMP
		,200
		,'2142324'
		,'F'
		,'Humidifier'
		,000002)
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]
      ,[serial_number] 
      ,[asset_name] 
      ,[asset_desc] 
      ,[added_by]
	,[OS] )
	VALUES
		('A013'
		,'B1'
		,'AB_Edmon'
		,'S'
		,CURRENT_TIMESTAMP
		,100.00
		,'33453214'
		,'Final Cut Pro'
		,'Video Editing Software'
		,0000102
		,'MACOS')
GO		

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]
      ,[comment_on_asset]	  
      ,[asset_name] 
      ,[asset_desc] 
      ,[added_by] )
	VALUES
		('A014'
		,'B5'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,40.00
		,'Charged annually'
		,'Google Drive'
		,'Cloud Storage'
		,0000104 )
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]	  
      ,[asset_name] 
      ,[asset_desc] 
      ,[added_by] )
	VALUES
		('A015'
		,'B4'
		,'AB_Edmon'
		,'S'
		,CURRENT_TIMESTAMP
		,90.00
		,'DVM Pro'
		,'Design Software'
		,999001 )
GO	

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]	  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A016'
		,'B3'
		,'AB_Edmon'
		,'S'
		,CURRENT_TIMESTAMP
		,90.00
		,'Norton Antivirus'
		,'Antivirus Software'
		,'Charged annually'
		,0000001 )
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]	  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A017'
		,'B2'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,14.99
		,'Adobe Photoshop'
		,'Photo Editing Software'
		,'Charged monthly'
		,0000001 )
GO		

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A018'
		,'B2'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,6.99
		,'Adobe Reader Pro'
		,'PDF Reader'
		,'Charged monthly'
		,0000103 )
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A019'
		,'B1'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,11.99
		,'iCloud'
		,'Cloud storage'
		,'Charged monthly'
		,0000101 )
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A020'
		,'B5'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,100.99
		,'sketchUp'
		,'3D Modelling Software'
		,'Charged annually'
		,000002 )
GO

INSERT INTO [dbo].[CARO_asset]
	( [asset_id] 
      ,[brand_id] 
      ,[location_id]
      ,[asset_category] 
      ,[purchase_date]
      ,[cost]  
      ,[asset_name] 
      ,[asset_desc]       
	  ,[comment_on_asset] 
      ,[added_by] )
	VALUES
		('A021'
		,'B5'
		,'BC_Rich'
		,'S'
		,CURRENT_TIMESTAMP
		,10.99
		,'Youtube Premium'
		,'Video Streaming Service'
		,'Charged monthly'
		,3527252 )
GO	


-- CARO_assigned_to

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(2356789, 'ABC123')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(2356999, 'ABC124')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(2356789, 'ABC125')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(2351236, 'ABC126')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(1543838, 'ABC127')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(935343, 'ABC128')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(253939, 'ABC129')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(34575, 'ABC130')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000005, 'A001')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000002, 'A002')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000100, 'A003')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000101, 'A004')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000102, 'A005')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000103, 'A006')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000104, 'A007')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000104, 'A008')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000102, 'A009')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000101, 'A010')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000103, 'A011')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000005, 'A012')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000002, 'A013')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000101, 'A014')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000104, 'A015')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000102, 'A016')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000103, 'A017')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000101, 'A018')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000103, 'A019')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000102, 'A020')
GO

INSERT INTO [dbo].[CARO_assigned_to]
		([personel_id]
		,[asset_id])
	VALUES
		(000001, 'A021')
GO


--CARO_activity_log

INSERT INTO [dbo].[CARO_activity_log]
           ([personel_id]
           ,[time_stamp]
           ,[description])
     VALUES
           (34575
           ,'2022-04-01'
           ,'[LOGIN_SUCCESS] User("+session.getAttribute(USERID_SESSIONPARAMNAME)+") successfully logged in.')
GO

INSERT INTO [dbo].[CARO_activity_log]
           ([personel_id]
           ,[time_stamp]
           ,[description])
     VALUES
           (34575
           ,'2022-04-01'
           ,'[DELETEASSET_SUCCESS] User(2354444) succesfully deleted asset(ABC100).')
GO


