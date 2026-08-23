use d18;
select *from dirtydata;
select employee_id from dirtydata where employee_id="";
select employee_id from dirtydata where employee_id is null;
select employee_name from dirtydata where employee_name="";
select employee_name from dirtydata where employee_name is null;
select upper(employee_name) from dirtydata;
update dirtydata set employee_name=upper(employee_name);
set sql_safe_updates=0;
update dirtydata set employee_name=trim(employee_name);
update dirtydata set department=case
when department="information technology" then "it"
else department
end;
update dirtydata set department=upper(department);
update dirtydata set department=trim(department);
update dirtydata set gender=case
when gender="male" then "m"
when gender="female" then "f"
else gender
end;
update dirtydata set gender=upper(gender);
update dirtydata set job_role=upper(job_role);
desc dirtydata;
update dirtydata set city=upper(city);
update dirtydata set city=trim(city);
update dirtydata set city=case
when city="hyd" then "hyderabad"
else city
end;
update dirtydata set city=upper(city);
select distinct city from dirtydata;
update dirtydata set city=case
when city="bangalore" then "bengalore"
else city
end;
update dirtydata set city=upper(city);
desc dirtydata;
select email from dirtydata where email="";
update dirtydata set email="unknown" where email="";
select * from dirtydata where email="unknown";
select phone from dirtydata ;
update dirtydata set phone=replace(phone,'+91 9876543216',"");
update dirtydata set phone=0 where phone="";
update dirtydata set phone=trim(phone);
select * from dirtydata;
update dirtydata set salary=replace(salary,'â‚¹55000',55000);
update dirtydata set salary=replace(salary,'â‚¹65,000',65000);
update dirtydata set salary=replace(salary,",","");
select salary from dirtydata where salary="";
alter table dirtydata modify column phone bigint;
update dirtydata set phone='9876543212' where phone="";
update dirtydata set experience=case
when experience="3" then "3 years"
when experience="2" then "2 years"
when experience="5" then "5 years"
when experience="4" then "4 years"
when experience="1" then "1 years"
when experience="10" then "10 years"
when experience="8" then "8 years"
when experience="6" then "6 years"
else experience
end;
select experience from dirtydata where experience="";
update dirtydata set experience="fresher" where experience="";
select *from dirtydata;
select distinct performance from dirtydata;
update dirtydata set performance=trim(performance);
update dirtydata set performance="NA" where performance="";
select performance from dirtydata where performance="";
update dirtydata set performance=upper(performance);
update dirtydata set status=case
when status="a" then "active"
else status
end;
select distinct status from dirtydata;
update dirtydata set status=upper(status);
UPDATE dirtydata
SET Joining_Date =
CASE
    WHEN Joining_Date LIKE '____-__-__'
        THEN STR_TO_DATE(Joining_Date, '%Y-%m-%d')

    WHEN Joining_Date LIKE '__/__/____'
        THEN STR_TO_DATE(Joining_Date, '%d/%m/%Y')

    WHEN Joining_Date LIKE '____/__/__'
        THEN STR_TO_DATE(Joining_Date, '%Y/%m/  %d')

    WHEN Joining_Date LIKE '__-__-____'
        THEN STR_TO_DATE(Joining_Date, '%d-%m-%Y')

    ELSE NULL
END;
select*from dirtydata;
set autocommit=1;
select phone from dirtydata where phone="";
desc dirtydata;
alter table dirtydata modify column joining_date date;


