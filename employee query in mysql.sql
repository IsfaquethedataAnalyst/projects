SELECT count(* )FROM data.employee;
#1 write an sql query to find the details of employee under altrition having 5+ years of exprience in between the age group of 27 and 35
select *
from employee
where ï»¿Age between 27 and 35
and TotalWorkingYears >= 5;

# 2 fetch the details of employee having maximum and minimum salary working in diffrent departments who recieved less than 13% salary hike 
select department,
       max(MonthlyIncome),
       min(MonthlyIncome)
from employee
where PercentSalaryHike < 13
group by Department;

select *
from employee
where PercentSalaryHike < 13;

# 3 calculate the employee average monthly income of all the employee who worked more than 3 years where education background is medical
select avg(MonthlyIncome)
from employee
where YearsAtCompany > 3
and EducationField = 'Medical'
group by EducationField;

# 4 identify the total no of male and female employee under attrition whose mariatal status is married and havn't recieved promotion in the last 2 years





#5 employee with max performance rating by no promotion for 4 years and above 

select max(PerformanceRating)
from employee;

select *
from employee
where PerformanceRating = (select max(PerformanceRating) from employee)
and YearsSinceLastPromotion >= 4;

#6 who max and min percentage salary hike rating 
select distinct Department
from employee;
# 7 employee working overtime but given min salary hike and more than 5 year with company 

select *
from employee
where overtime ='yes'
and PercentSalaryHike = (select min(PercentSalaryHike) from employee)
and YearsAtCompany > 5
and Attrition = 'yes';

select *
from employee
where overtime ='yes'
and PercentSalaryHike = (select max(PercentSalaryHike) from employee)
and YearsAtCompany < 5;

select MaritalStatus,max(RelationshipSatisfaction),min(RelationshipSatisfaction)
from employee
group by MaritalStatus;