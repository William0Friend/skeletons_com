CREATE TRIGGER ResetIdentityValues
ON Inventory
AFTER DELETE
AS
BEGIN
   SET NOCOUNT ON;

   DECLARE @MaxId int;
   SELECT @MaxId = MAX(SkeletonsID) FROM Inventory;

   DBCC CHECKIDENT ('Inventory', RESEED, @MaxId);
END;