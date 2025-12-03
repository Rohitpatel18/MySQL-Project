	# 2. Write an SQL query to show all Item_Identifier
SELECT Item_Identifier FROM sql_project;

# 3. Write an SQL query to show count of total Item_Identifier
SELECT COUNT(Item_Identifier) FROM sql_project;

# 4. Write an SQL query to show maximum Item_Weight
SELECT MAX(Item_Weight) FROM sql_project;

# 5. Write an SQL query to show minimum Item_Weight
SELECT MIN(Item_Weight) FROM sql_project;

# 6. Write an SQL query to show average Item_Weight
SELECT AVG(Item_Weight) FROM sql_project;

# 7. Write an SQL query to show count of Low Fat items
SELECT COUNT(*) FROM sql_project WHERE LOWER(Item_Fat_Content)='low fat';

# 8. Write an SQL query to show count of Regular items
SELECT COUNT(*) FROM sql_project WHERE LOWER(Item_Fat_Content)='regular';

# 9. Write an SQL query to show maximum Item_MRP
SELECT MAX(Item_MRP) FROM sql_project;

# 10. Write an SQL query to show minimum Item_MRP
SELECT MIN(Item_MRP) FROM sql_project;

# 11. Items where Item_MRP > 200
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP 
FROM sql_project WHERE Item_MRP > 200;

# 12. Maximum MRP where Low Fat
SELECT MAX(Item_MRP) FROM sql_project 
WHERE LOWER(Item_Fat_Content)='low fat';

# 13. Minimum MRP where Low Fat
SELECT MIN(Item_MRP) FROM sql_project 
WHERE LOWER(Item_Fat_Content)='low fat';

# 14. All data where Item_MRP is between 50 and 100
SELECT * FROM sql_project WHERE Item_MRP BETWEEN 50 AND 100;

# 15. All unique Item_Fat_Content
SELECT DISTINCT Item_Fat_Content FROM sql_project;

# 16. All unique Item_Type
SELECT DISTINCT Item_Type FROM sql_project;

# 17. All data descending order by Item_MRP
SELECT * FROM sql_project ORDER BY Item_MRP DESC;

# 18. All data ascending order by Item_Outlet_Sales
SELECT * FROM sql_project ORDER BY Item_Outlet_Sales ASC;

# 19. All data ascending order by Item_Type
SELECT * FROM sql_project ORDER BY Item_Type ASC;

# 20. Data of item_type Dairy & Meat
SELECT * FROM sql_project 
WHERE Item_Type IN ('Dairy','Meat');

# 21. All unique Outlet_Size
SELECT DISTINCT Outlet_Size FROM sql_project;

# 22. All unique Outlet_Location_Type
SELECT DISTINCT Outlet_Location_Type FROM sql_project;

# 23. All unique Outlet_Type
SELECT DISTINCT Outlet_Type FROM sql_project;

# 24. Count of items by Item_Type (descending)
SELECT Item_Type, COUNT(*) AS Item_Count
FROM sql_project
GROUP BY Item_Type
ORDER BY Item_Count DESC;

# 25. Count of items by Outlet_Size (ascending)
SELECT Outlet_Size, COUNT(*) AS Item_Size
FROM sql_project
GROUP BY Outlet_Size
ORDER BY Item_Size ASC;

# 26. Count of items by Outlet_Type (descending)
SELECT Outlet_Type, COUNT(*) AS Outlet_Types
FROM sql_project
GROUP BY Outlet_Type
ORDER BY Outlet_Types DESC;

# 27. Count of items by Outlet_Location_Type (descending)
SELECT Outlet_Location_Type, COUNT(*) AS Location_Count
FROM sql_project
GROUP BY Outlet_Location_Type
ORDER BY Location_Count DESC;

# 28. Maximum MRP by Item_Type
SELECT Item_Type, MAX(Item_MRP)
FROM sql_project
GROUP BY Item_Type;

# 29. Minimum MRP by Item_Type
SELECT Item_Type, MIN(Item_MRP)
FROM sql_project
GROUP BY Item_Type;

# 30. Minimum MRP by Outlet_Establishment_Year (descending)
SELECT Outlet_Establishment_Year, MIN(Item_MRP) AS Min_MRP
FROM sql_project
GROUP BY Outlet_Establishment_Year
ORDER BY Min_MRP DESC;

# 31. Maximum MRP by Outlet_Establishment_Year (descending)
SELECT Outlet_Establishment_Year, MAX(Item_MRP) AS Max_MRP
FROM sql_project
GROUP BY Outlet_Establishment_Year
ORDER BY Max_MRP DESC;

# 32. Average MRP by Outlet_Size (descending)
SELECT Outlet_Size, AVG(Item_MRP) AS Avg_MRP
FROM sql_project
GROUP BY Outlet_Size
ORDER BY Avg_MRP DESC;

# 33. Average MRP by Outlet_Type (ascending)
SELECT Outlet_Type, AVG(Item_MRP) AS Avg_MRP
FROM sql_project
GROUP BY Outlet_Type
ORDER BY Avg_MRP ASC;

# 34. Maximum MRP by Outlet_Type
SELECT Outlet_Type, MAX(Item_MRP)
FROM sql_project
GROUP BY Outlet_Type;

# 35. Maximum Item_Weight by Item_Type
SELECT Item_Type, MAX(Item_Weight)
FROM sql_project
GROUP BY Item_Type;

# 36. Maximum Item_Weight by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MAX(Item_Weight)
FROM sql_project
GROUP BY Outlet_Establishment_Year;

# 37. Minimum Item_Weight by Outlet_Type
SELECT Outlet_Type, MIN(Item_Weight)
FROM sql_project
GROUP BY Outlet_Type;

# 38. Average Item_Weight by Outlet_Location_Type (descending)
SELECT Outlet_Location_Type, AVG(Item_Weight) AS Avg_Weight
FROM sql_project
GROUP BY Outlet_Location_Type
ORDER BY Avg_Weight DESC;

# 39. Maximum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MAX(Item_Outlet_Sales)
FROM sql_project
GROUP BY Item_Type;

# 40. Minimum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MIN(Item_Outlet_Sales)
FROM sql_project
GROUP BY Item_Type;

# 41. Minimum Item_Outlet_Sales by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales)
FROM sql_project
GROUP BY Outlet_Establishment_Year;

# 42. Maximum Item_Outlet_Sales by Outlet_Establishment_Year (descending)
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales) AS Max_Sales
FROM sql_project
GROUP BY Outlet_Establishment_Year
ORDER BY Max_Sales DESC;

# 43. Average Item_Outlet_Sales by Outlet_Size (descending)
SELECT Outlet_Size, AVG(Item_Outlet_Sales) AS Avg_Sales
FROM sql_project
GROUP BY Outlet_Size
ORDER BY Avg_Sales DESC;

# 44. Average Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, AVG(Item_Outlet_Sales) AS Avg_Sales
FROM sql_project
GROUP BY Outlet_Type;

# 45. Maximum Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, MAX(Item_Outlet_Sales) AS Max_Sales
FROM sql_project
GROUP BY Outlet_Type;

# 46. Total Item_Outlet_Sales by Item_Type
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sql_project
GROUP BY Item_Type
ORDER BY Total_Sales;

# 47. Total Item_Outlet_Sales by Item_Fat_Content
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sql_project
GROUP BY Item_Fat_Content
ORDER BY Total_Sales;

# 48. Maximum Item_Visibility by Item_Type
SELECT Item_Type, MAX(Item_Visibility) AS Max_Visibility
FROM sql_project
GROUP BY Item_Type
ORDER BY Max_Visibility;

# 49. Minimum Item_Visibility by Item_Type
SELECT Item_Type, MIN(Item_Visibility) AS Min_Visibility
FROM sql_project
GROUP BY Item_Type
ORDER BY Min_Visibility;

# 50. Total Item_Outlet_Sales by Item_Type for Tier 1 locations
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sql_project
WHERE Outlet_Location_Type='Tier 1'
GROUP BY Item_Type
ORDER BY Total_Sales;

# 51. Total Item_Outlet_Sales by Item_Type where Fat Content = Low Fat & LF
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sql_project
WHERE Item_Fat_Content IN ('Low Fat','LF')
GROUP BY Item_Type
ORDER BY Total_Sales;
