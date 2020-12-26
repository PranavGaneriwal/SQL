Delimiter //
create procedure salary_range (IN min_salary FLOAT, IN max_salary FLOAT)
begin
    select e.gender,
           d.dept_name, 
           AVG(s.salary) AS avg_salary
    from t_salaries s
    join t_employees e 
    using (emp_no)
    join t_dept_emp de
    using (emp_no)
    join t_departments d
	using (dept_no)
    where s.salary BETWEEN min_salary AND max_salary
    group by d.dept_no, e.gender;
end//
Delimiter ;

Call salary_range(50000,90000)