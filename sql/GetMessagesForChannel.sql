USE [ChatterProject]
GO
/****** Object:  StoredProcedure [dbo].[GetMessagesForChannel]    Script Date: 3/26/2020 12:29:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetMessagesForChannel]
	-- Add the parameters for the stored procedure here
	@channelid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [message]
	WHERE @channelid = [message].channelid
	ORDER BY id DESC;
END
