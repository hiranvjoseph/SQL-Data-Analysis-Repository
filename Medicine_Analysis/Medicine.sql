create database Medicine;
use medicine;
select * from medicine_details;

#1. List medicines with their manufacturers in alphabetical order.

SELECT Medicine_Name, Manufacturer
FROM medicine_details
ORDER BY Medicine_Name;

#2. List medicines with "headache" in their uses, sorted by "Excellent Review %" in descending order.

SELECT Medicine_Name, `Excellent Review %`
FROM medicine_details
WHERE Uses LIKE '%headache%'
ORDER BY `Excellent Review %` DESC;

# 3.Find the manufacturer with the most medicines and the count of medicines they produce.

SELECT Manufacturer, COUNT(*) AS Medicine_Count
FROM medicine_details
GROUP BY Manufacturer
ORDER BY Medicine_Count DESC
LIMIT 1;

#4. Calculate the average "Excellent Review %" for each manufacturer and list the results in descending order.

SELECT Manufacturer, AVG(`Excellent Review %`) AS Avg_Excellent_Review
FROM medicine_details
GROUP BY Manufacturer
ORDER BY Avg_Excellent_Review DESC;

#5. Find medicines with more than 5 side effects and list their names.
SELECT Medicine_Name,Side_effects
FROM medicine_details
WHERE LENGTH(Side_effects) - LENGTH(REPLACE(Side_effects, ',', '')) + 1 > 5;

#6. List medicines that have the same composition and sort them by composition.

SELECT Composition, GROUP_CONCAT(Medicine_Name ORDER BY Medicine_Name) AS Medicines_with_Same_Composition
FROM medicine_details
GROUP BY Composition
ORDER BY Composition;

#7. Find the medicine with the most uses and the number of uses it has.


SELECT Medicine_Name, LENGTH(Uses) - LENGTH(REPLACE(Uses, ',', '')) + 1 AS Uses_Count
FROM medicine_details
ORDER BY Uses_Count DESC
LIMIT 1;

#8. List medicines that have no side effects.

SELECT Medicine_Name
FROM medicine_details
WHERE Side_effects IS NULL OR Side_effects = '';

#9. Calculate the total number of reviews (Excellent, Average, Poor) for all medicines

SELECT SUM(`Excellent Review %` + `Average_Review %` + `Poor_Review %`) AS Total_Review_Count
FROM medicine_details;

#10. List medicines with "fever" as a use and "nausea" as a side effect.

SELECT Medicine_Name
FROM medicine_details
WHERE Uses LIKE '%fever%' AND Side_effects LIKE '%nausea%';

#11. Find medicines with no "Average_Review %" and sort them by "Excellent Review %" in descending order.

SELECT Medicine_Name, `Excellent Review %`
FROM medicine_details
WHERE `Average_Review %` IS NULL
ORDER BY `Excellent Review %` DESC;

#12. Calculate the average number of uses per medicine.

SELECT AVG(LENGTH(Uses) - LENGTH(REPLACE(Uses, ',', '')) + 1) AS Avg_Uses_Count FROM medicine_details;


#13. Find medicines with more "Excellent Review %" than "Average_Review %".

SELECT Medicine_Name
FROM medicine_details
WHERE `Excellent Review %` > `Average_Review %`;

#14. List medicines with the most common first composition and the count of medicines with that composition.

SELECT SUBSTRING_INDEX(Composition, ',', 1) AS First_Composition, COUNT(*) AS Composition_Count
FROM medicine_details
GROUP BY First_Composition
ORDER BY Composition_Count DESC
LIMIT 1;

#15. Find the total count of medicines with "cough" in their uses.

SELECT COUNT(*) AS Medicines_with_Cough_Use
FROM medicine_details
WHERE Uses LIKE '%cough%';

#16. List medicines that have "insomnia" as a side effect but not listed as a use.

SELECT Medicine_Name
FROM medicine_details
WHERE Side_effects LIKE '%insomnia%' AND Uses NOT LIKE '%insomnia%';

#17. Calculate the range of "Excellent Review %" values (from minimum to maximum).

SELECT MIN(`Excellent Review %`) AS Min_Excellent_Review, MAX(`Excellent Review %`) AS Max_Excellent_Review
FROM medicine_details;

#18. List medicines with "pain" in their uses and "nausea" in their side effects, sorted by "Excellent Review %" in descending order.

SELECT Medicine_Name, `Excellent Review %`
FROM medicine_details
WHERE Uses LIKE '%pain%' AND Side_effects LIKE '%nausea%'
ORDER BY `Excellent Review %` DESC;

#19.  Calculate the total number of reviews for each manufacturer and sort them by total review count.

SELECT Manufacturer, SUM(`Excellent Review %` + `Average_Review %` + `Poor_Review %`) AS Total_Review_Count
FROM medicine_details
GROUP BY Manufacturer
ORDER BY Total_Review_Count DESC;

#20. Find medicines with the lowest "Average_Review %" values, and list the bottom 5 in ascending order.

SELECT Medicine_Name, `Average_Review %`
FROM medicine_details
WHERE `Average_Review %` IS NOT NULL
ORDER BY `Average_Review %`
LIMIT 5;

#21. List medicines with "anxiety" in their uses and sort them by "Average_Review %" in descending order.
SELECT Medicine_Name, `Average_Review %`
FROM medicine_details
WHERE Uses LIKE '%anxiety%'
ORDER BY `Average_Review %` DESC;

#22. Find the average number of side effects for all medicines.

SELECT AVG(LENGTH(Side_effects) - LENGTH(REPLACE(Side_effects, ',', '')) + 1) AS Avg_Side_Effects_Count FROM medicine_details;

#23. Calculate the total number of reviews (Excellent, Average, Poor) for medicines with "pain" in their uses.

SELECT SUM(`Excellent Review %` + `Average_Review %` + `Poor_Review %`) AS Total_Review_Count
FROM medicine_details
WHERE Uses LIKE '%pain%';

#24. List medicines with the same number of compositions and their compositions, grouped by composition count.

SELECT LENGTH(Composition) - LENGTH(REPLACE(Composition, ',', '')) + 1 AS Composition_Count,
       GROUP_CONCAT(DISTINCT Composition ORDER BY Composition) AS Compositions
FROM medicine_details
GROUP BY Composition_Count
ORDER BY Composition_Count;

#25. Calculate the total number of reviews for medicines produced by "Sanofi India Ltd."

SELECT SUM(`Excellent Review %` + `Average_Review %` + `Poor_Review %`) AS Total_Review_Count
FROM medicine_details
WHERE Manufacturer = 'Sanofi India Ltd';

#26. List medicines with no manufacturer specified and sort them by "Medicine_Name" in ascending order.
SELECT Medicine_Name
FROM medicine_details
WHERE Manufacturer IS NULL
ORDER BY Medicine_Name;

#27. Calculate the average number of compositions for medicines with "fever" in their uses.

SELECT AVG(LENGTH(Composition) - LENGTH(REPLACE(Composition, ',', '')) + 1) AS Avg_Composition_Count
FROM medicine_details
WHERE Uses LIKE '%fever%';

#28. List medicines with the word "cough" in their uses and have no side effects.
SELECT Medicine_Name
FROM medicine_details
WHERE Uses LIKE '%cough%'AND (Side_effects IS NULL OR Side_effects = '');

SELECT Medicine_Name
FROM medicine_details
WHERE Uses LIKE '%cough%';