USE [ARAdmin]
GO
/****** Object:  StoredProcedure [dbo].[spuAdminPersona]    Script Date: 23/01/2020 01:19:04 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		José Luis
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spuAdminPersona] 
	-- Add the parameters for the stored procedure here
	@Op int,
    @Nombre nvarchar(30) ,
	@Email nvarchar(39) ,
	@password nvarchar(39) null,
	@age int null,
	@Salary int null
AS
BEGIN

    IF(@Nombre = null)
	SET @Nombre = 'example'

	DECLARE @Total money

	--SET @Total = SElect * From  TAREA un trigger 
	
	if(@Op = 1)
	BEGIN
	INSERT INTO [dbo].[User] VALUES (@Nombre,@Email,@password,@age,@Salary)
	END
	if(@Op = 2)
	BEGIN
	INSERT INTO [dbo].[User] VALUES (@Nombre,@Email,@password,@age,@Salary)
	END

END
