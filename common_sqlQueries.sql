use banking_system;

select * from customers;

select customer_id, first_name, email, country from customers;


select * from loans;

select * from accounts order by customer_id desc;


select * from customers where first_name = 'mohsin';

select * from loan_payments where payment_amount = '7000';


insert into loan_payments (payment_id, payment_amount, payment_date, loan_id)  values
('5008',	'50000',	'2026-06-30',	'9004');
select * from loan_payments;


delete from loan_payments where payment_id = '5008';
select * from loan_payments;

create table example (
example varchar(300)
);

alter table example add column my_example varchar(30) not null;

drop table example;


select * from accounts where  balance is null;
select * from accounts where balance is not null;







