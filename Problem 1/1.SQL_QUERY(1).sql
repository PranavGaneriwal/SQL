USE employees_mod;

SELECT DISTINCT
       year(de.from_date) as calendar_year,
	   e.gender,
       count(e.emp_no) as num_of_employees
FROM t_employees e
JOIN t_dept_emp de
ON de.emp_no = e.emp_no
GROUP BY calendar_year, e.gender
HAVING calendar_year >= 1990
ORDER BY calendar_year