USE  tarining;
Select * from worker;
-- Q-1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
SELECT FIRST_NAME as WORKER_NAME FROM worker ;

-- Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
SELECT UPPER(FIRST_NAME) FROM worker;

-- Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
SELECT distinct DEPARTMENT FROM worker;

-- Q-4. Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Worker Table.
SELECT LEFT(FIRST_NAME,3) AS first_3_char FROM worker;

-- Q-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
SELECT FIRST_NAME, INSTR(FIRST_NAME,'A') AS POSITION FROM worker
WHERE FIRST_NAME = 'Amitabh' ;

-- Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
SELECT RTRIM(FIRST_NAME) AS FIRST_NAME FROM worker;

-- Q-7. Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
SELECT LTRIM(DEPARTMENT) FROM worker;

-- Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
SELECT distinct DEPARTMENT, LENGTH(DEPARTMENT) FROM worker;

-- Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘a’ With ‘K’.    (for replacing char is case-sensitive)
SELECT FIRST_NAME, REPLACE(FIRST_NAME,'a','k') AS FIRST_NAME FROM worker;

-- Q-10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.
SELECT concat(FIRST_NAME," ", LAST_NAME) AS COMPLETE_NAME FROM worker;

-- Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
SELECT * FROM worker ORDER BY FIRST_NAME ASC;

-- Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
SELECT * FROM worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.
SELECT * FROM worker WHERE FIRST_NAME IN ('Vipul','Satish');

-- Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
SELECT * FROM worker WHERE FIRST_NAME NOT IN ('Vipul','Satish');

-- Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
SELECT * FROM worker WHERE DEPARTMENT = "Admin";

-- Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Co
SELECT * FROM worker WHERE FIRST_NAME LIKE '%A%';

-- Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
SELECT * FROM worker WHERE FIRST_NAME LIKE '%A';

-- Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
SELECT * FROM worker WHERE FIRST_NAME LIKE '%H' AND char_length(FIRST_NAME) = 6;

-- Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
SELECT * FROM worker WHERE SALARY BETWEEN 100000 and 500000;

-- Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014. 
SELECT * FROM worker WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 2;

-- Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’. 
SELECT DEPARTMENT,COUNT(FIRST_NAME) FROM worker GROUP BY DEPARTMENT HAVING DEPARTMENT = 'Admin';

-- Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000. 
SELECT FIRST_NAME FROM worker WHERE SALARY >= 50000 AND SALARY<= 100000;

-- Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
 SELECT DEPARTMENT,COUNT(FIRST_NAME) AS NO_OF_WORKER FROM worker GROUP BY DEPARTMENT ORDER BY COUNT(FIRST_NAME) DESC;
 
 -- Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
SELECT * FROM worker as w
JOIN title as t 
ON w.WORKER_ID = t.WORKER_REF_ID
WHERE t.WORKER_TITLE = 'Manager';

-- Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT, COUNT(*) As count 
FROM worker 
GROUP BY FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT
HAVING COUNT(*) > 1;

-- Q-26. Write An SQL Query To Show Only Odd Rows From A Table.
SELECT * FROM worker WHERE WORKER_ID %2 = 1; 

-- Q-27. Write An SQL Query To Show Only Even Rows From A Table.
 SELECT * FROM worker WHERE WORKER_ID %2 = 0; 
 
 -- Q-28. Write An SQL Query To Clone A New Table From Another Table.
CREATE TABLE worker_copy AS SELECT * FROM worker ;

-- Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
 SELECT * FROM worker as w
 INNER JOIN bonus as b
 ON w.WORKER_ID = b.WORKER_REF_ID;
 
 -- Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have.
 SELECT * FROM worker as w
 LEFT JOIN title as t
 ON w.WORKER_ID = t.WORKER_REF_ID
 WHERE t.WORKER_REF_ID IS NULL;
 
 -- Q-31. Write An SQL Query To Show The Current Date And Time.
SELECT NOW() ;

--  Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
SELECT * FROM worker ORDER BY SALARY DESC LIMIT 10;

-- Q-33. Write An SQL Query To Determine 5  Highest Salary From A Table.
 SELECT * FROM worker ORDER BY SALARY DESC LIMIT 5;
 
 -- Q34. Write An SQL Query To Determine The 5th Highest Salary Without Using TOP Or Limit Method.
SELECT * 
FROM ( 
	SELECT * , 
    dense_rank() OVER(order by SALARY DESC) AS salary_rank 
    FROM worker
    )r
    WHERE salary_rank = 5;

 -- Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary.
 SELECT * FROM worker WHERE SALARY IN (
 SELECT SALARY FROM worker
 GROUP BY SALARY 
 HAVING COUNT(*) > 1
 );
 
 -- Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
 SELECT MAX(SALARY) AS second_highest_salary FROM worker
 WHERE SALARY < ( 
	SELECT MAX(SALARY) FROM worker
);

-- Q-37. Write An SQL Query To Show One Row Twice In Results From A Table.
SELECT * FROM worker WHERE WORKER_ID = 1
UNION ALL
SELECT * FROM worker WHERE WORKER_ID = 1;
 
 -- Q-38. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
 SELECT * FROM worker as w
 INNER JOIN bonus as b
 ON w.WORKER_ID = b.WORKER_REF_ID;
 
 -- Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY worker_id) AS rn,
           COUNT(*) OVER () AS total_rows
    FROM worker
) t
WHERE rn <= CEIL(total_rows / 2);

-- Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.
SELECT DEPARTMENT, COUNT(*) 
FROM worker 
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 5;

-- Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There. 
SELECT DEPARTMENT, COUNT(*) AS employee_count
FROM worker 
GROUP BY DEPARTMENT ;

-- Q-42. Write An SQL Query To Show The Last Record From A Table.
SELECT *
FROM worker 
ORDER BY WORKER_ID DESC
LIMIT 1; 

-- Q-43. Write An SQL Query To Fetch The First Row Of A Table.
SELECT * 
FROM worker
ORDER BY WORKER_ID
LIMIT 1; 

-- Q-44. Write An SQL Query To Fetch The Last Five Records From A Table. 
SELECT *
FROM (
    SELECT *
    FROM worker
    ORDER BY WORKER_ID DESC
    LIMIT 5
) t
ORDER BY WORKER_ID;

-- Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY 
FROM worker w
WHERE SALARY = (
	SELECT MAX(SALARY) 
    FROM worker 
    WHERE DEPARTMENT = w.DEPARTMENT
);

-- Q-46. Write An SQL Query To Fetch Three Max Salaries From A Table.
SELECT * 
FROM worker 
ORDER BY SALARY DESC
LIMIT 3; 

-- Q-47. Write An SQL Query To Fetch Three Min Salaries From A Table.
 SELECT * 
FROM worker 
ORDER BY SALARY ASC
LIMIT 3; 

-- Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table. IF N = 3
SELECT SALARY 
FROM ( 
SELECT SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS salary_rank
FROM worker 
) r
where salary_rank = 3;

-- Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid 
SELECT DEPARTMENT , SUM(SALARY) AS total_salary 
FROM worker
GROUP BY DEPARTMENT ; 

-- Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM worker
WHERE SALARY = (
SELECT MAX(SALARY) 
FROM worker
); 
 