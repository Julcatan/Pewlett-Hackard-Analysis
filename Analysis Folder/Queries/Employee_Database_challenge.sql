-- Deliverable 1: The Number of Retiring Employees by Title 

SELECT
e.emp_no,
e.first_name, 
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM titles AS ti
INNER JOIN employees As e
ON ti.emp_no =  e.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ti.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) emp_no, 
first_name,
last_name,
title
INTO unique_titles 
FROM retirement_titles 
ORDER BY retirement_titles.emp_no, to_date DESC;


SELECT COUNT(unique_titles.emp_no),title 
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.count DESC;


-- Deliverable 2: The Employees Eligible for the Mentorship Program 
SELECT DISTINCT ON (e.emp_no)  
e.emp_no,
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
ON de.emp_no = e.emp_no
LEFT JOIN  titles AS ti
ON ti.emp_no = e.emp_no
WHERE de.to_date >= '2021-11-27'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no ASC; 

-- additional queries for summary
SELECT COUNT(m.emp_no),
m.title
INTO mentorship_by_title
FROM mentorship_eligibility AS m
GROUP BY m.title
ORDER BY m.title ASC;


SELECT 
mt.title,
mt.count,
rt.count AS retiree_count
INTO mentorship_vs_retirees_training 
FROM mentorship_by_title AS mt
LEFT JOIN retiring_titles AS rt
ON mt.title = rt.title
ORDER BY rt.title 
