USE [ChatterProject]
GO
/****** Object:  StoredProcedure [dbo].[CreateChannel]    Script Date: 3/26/2020 12:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CreateChannel] 
	-- Add the parameters for the stored procedure here
	@name NVARCHAR(500),
	@creatorid int,
	@channelid int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [channel]
	(name) VALUES (@name);

	SET @channelid = SCOPE_IDENTITY();

	INSERT INTO [channeluser]
	(id_user, id_channel)
	VALUES
	(@creatorid, @channelid);
	
END
