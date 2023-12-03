USE [test_capbac_V3]
GO
/****** Object:  UserDefinedFunction [dbo].[CalculateTotalPaidAmountVeMayBay]    Script Date: 11/20/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[CalculateTotalPaidAmountVeMayBay](@MaVe VARCHAR(20))
RETURNS INT
AS
BEGIN
    DECLARE @TotalAmount INT;
    SELECT @TotalAmount = COUNT(*)
    FROM VeMayBay AS a
    JOIN NguoiThamGiaChuyenBay AS b ON a.MaVe = b.MaVeMayBay 
    WHERE a.MaVe = @MaVe
    GROUP BY a.MaVe;
    RETURN ISNULL(@TotalAmount, 0);
END;