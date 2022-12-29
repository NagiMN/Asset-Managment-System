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
