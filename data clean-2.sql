use d18;
select*from dataclean;
select order_id from dataclean where order_id="";
desc dataclean;
select firstname from dataclean where firstname="";
select lastname from dataclean where lastname="";
update dataclean set firstname=upper(firstname);
set sql_safe_updates=0;
update dataclean set lastname=upper(lastname);
select email from dataclean where email="";
update dataclean set email="NA" where email="";
select product from dataclean where product="";
update dataclean set product=upper(product);
select quantity from dataclean where quantity="";
select price from dataclean where price="";
select distinct price from dataclean;
update dataclean set price="0" where price="";
alter table dataclean modify column price int;
select city from dataclean where city="";
update dataclean set city="NA" where city="";
select state from dataclean where state="";
update dataclean set city=upper(city);
update dataclean set state=upper(state);
select pincode from dataclean where pincode="";
desc dataclean;
select*from dataclean;
select  order_date from dataclean ;
select order_date from dataclean where order_date="";
UPDATE dataclean
SET order_date =
CASE
    WHEN order_date LIKE '____-__-__'
        THEN STR_TO_DATE(order_date, '%Y-%m-%d')

    WHEN order_date LIKE '__/__/____'
        THEN STR_TO_DATE(order_date, '%d/%m/%Y')

    WHEN order_date LIKE '____/__/__'
        THEN STR_TO_DATE(order_date, '%Y/%m/%d')

    WHEN order_date LIKE '__-__-____'
        THEN STR_TO_DATE(order_date, '%d-%m-%Y')

    ELSE NULL
END;
alter table dataclean modify column order_date DATE;
select payment_method from dataclean where payment_method="";
update dataclean set payment_method="NA" where payment_method="";
select status from dataclean where status="";





