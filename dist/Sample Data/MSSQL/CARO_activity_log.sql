--CARO_activity_log

INSERT INTO [dbo].[CARO_activity_log]
           ([personel_id]
           ,[time_stamp]
           ,[description])
     VALUES
           ('34575'
           ,GETDATE()
           ,'Logged into system')
GO

INSERT INTO [dbo].[CARO_activity_log]
           ([personel_id]
           ,[time_stamp]
           ,[description])
     VALUES
           ('2354444'
           ,GETDATE()
           ,'Added new asset')
GO

INSERT INTO [dbo].[CARO_activity_log]
           ([personel_id]
           ,[time_stamp]
           ,[description])
     VALUES
           ('3527252'
           ,GETDATE()
           ,'Generated report')
GO

