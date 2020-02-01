USE [ARAdmin]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
/* CREATE USER TABLE */
CREATE TABLE [dbo].[User2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameUser2] [varchar](60) NOT NULL,
	[emailUser2] [varchar](50) NOT NULL,
	[password2] [varchar](30) NOT NULL,
 CONSTRAINT [PK_User2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* DROP USER TABLE */
 DROP TABLE [dbo].[User2]
GO

 

/* INSERT INTO USER TABLE */
INSERT INTO [dbo].[User]
           ([nameUser]
           ,[emailUser]
           ,[password]
		   ,[age]
           ,[salary])

     VALUES
           ('roberto',
           'roberto@hotmail.com',
           'sdfg',
		   55,
		   5000)
GO
Select 
/*DELETE FROM USER TABLE*/
DELETE FROM [dbo].[User]
      WHERE nameUser = 'juan'
GO

/*UPDATE FROM USER TABLE*/
UPDATE [dbo].[User]
   SET [nameUser] = 'roberto',
      [emailUser] = 'roberto@hotmail.com',
      [password] = 'skdgjfsaiu7'
 WHERE [nameUser] = 'luis'

 UPDATE [dbo].[User]
   SET [age] = 25,
      [salary] = 11000
      
 WHERE [nameUser] = 'jorge'

 -- Selección de registros con operadores de comparación

 SELECT * FROM [dbo].[User]
 --WHERE [nameUser] = 'jorge'
  --WHERE [salary] < 20000
  --WHERE [salary] <> 11000
 --WHERE [age] !< 18
  --WHERE [age] != 18
 WHERE [age] !> 19
--WHERE [salary] > 30000

 -- Select top, limitando renglones

 Select TOP(1) * from [dbo].[User]

