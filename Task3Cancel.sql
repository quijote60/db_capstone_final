USE littlelemondb;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN id INT)
BEGIN


DELETE FROM Orders WHERE OrderID = id; 

END //
DELIMITER ;

