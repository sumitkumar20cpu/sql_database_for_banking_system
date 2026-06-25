create schema banking_system;
use banking_system;

CREATE TABLE customers (
  customer_id int(20) not null auto_increment primary key,
  first_name varchar(40) not null,
  last_name varchar(40) not null,
  email varchar(50) not null,
  phone_number varchar(20),
  registration_date date not null,
  country varchar(30)
  )
  
  
  
CREATE TABLE accounts (
  account_id int(20) not null auto_increment primary key,
  account_number varchar(30) not null,
  account_type varchar(30) not null,
  balance decimal(12,2) default 0.00,
  customer_id int(20) not null,
  foreign key (customer_id) references customers(customer_id)
  )
  
  
  
CREATE TABLE transactions (
  transaction_id int(20) not null auto_increment primary key,
  transaction_date timestamp not null default current_timestamp(),
  transaction_type varchar(20) not null,
  amount decimal(12,2) not null,
  description varchar(250),
  account_id int(11) not null,
  foreign key (account_id) references accounts(account_id)
  )
  
  
  
CREATE TABLE loans (
  loan_id int(20) not null auto_increment primary key,
  loan_amount decimal(10,2) not null,
  interest_rate decimal(5,2) not null,
  loan_type varchar(30) not null,
  start_date timestamp not null default current_timestamp(),
  term_months int(20) not null,
  status varchar(30) DEFAULT 'active',
  customer_id int(11) not null,
  foreign key (customer_id) references customers(customer_id)
  )

  
  
CREATE TABLE loan_payments (
  payment_id int(20) not null auto_increment primary key,
  payment_amount decimal(10,2) NOT NULL,
  payment_date timestamp NOT NULL DEFAULT current_timestamp(),
  loan_id int(20) NOT NULL,
  foreign key (loan_id) references loans(loan_id)
  )


