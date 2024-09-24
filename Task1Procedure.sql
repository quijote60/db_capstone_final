USE LittleLemonDB;


DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS 'Max Quantity in Order'
FROM Orders;
END //
DELIMITER ;
CALL GetMaxQuantity();