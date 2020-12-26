select e.emp_no,
       e.gender,
       d.dept_name,
       ROUND(avg(s.salary), 2) as salary,
       year(s.from_date) as calendar_year
from t_employees e
  join t_salaries s
    using (emp_no)
  join t_dept_emp de
    using (emp_no)
  join t_departments d
    on de.dept_no = d.dept_no
group by d.dept_no, e.gender, calendar_year
having calendar_year <=2002
order by d.dept_no

