USE LittleLemonDB;
SELECT a.CustomerID, a.FullName, b.OrderID, b.TotalCost, c.MenuName, d.Courses
FROM Customers a
INNER JOIN Orders b ON a.CustomerID = b.CustomerID
INNER JOIN Menus c ON b.MenuID = c.MenuID
INNER JOIN MenuItems d ON c.MenuItemID = d.MenuItemID
WHERE TotalCost > 150
ORDER BY TotalCost ASC