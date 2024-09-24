USE littlelemondb;

PREPARE GetOrderDetail FROM 
'SELECT OrderID, Quantity, TotalCost FROM Orders 
WHERE OrderID = ?;';

SET @id = 	10;
EXECUTE GetOrderDetail USING @id;