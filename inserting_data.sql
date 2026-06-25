use banking_system;


insert into customers (customer_id, first_name, last_name, email, phone_number, registration_date, country) values 
('001',	'Koushal', 'sharma', 'sharma@123', '+91234597678',	'2026-04-20', 'India'),
('002',	'Mohsin', 'kamal', 'kamal@123', '+9187756357', '2026-04-21', 'India'),
('003',	'saiful', 'malik', 'malik@123',	'+44672887878',	'2026-04-22', 'England'),
('004',	'Vikram', 'singh', 'singh@123', '+4421987646', '2026-04-23', 'England'),
('005',	'Ansh',	'gupta', 'gupta@123', '+9127354736', '2026-04-24',	'India'),
('006',	'Damal', 'Tomar', 'tommar@123', '+9328876773', '2026-04-25', 'Dubai'),
('007',	'Kuldeep', 'singh',	'singh@1234', '+491276394',	'2026-04-26', 'Germany'),
('008',	'Govind', 'Bora', 'bora@123', '+4923452233', '2026-04-27', 'Germany'),
('009',	'Sandeep', 'mehta',	'mehta@123', '+49776645245', '2026-04-28', 'Germany'),
('010',	'Shadab', 'Mohd', 'mohd@123', '+9187766498', '2026-04-29', 'India')


insert into accounts (account_id, account_number, account_type, balance, customer_id) values
('1000',	'11223344',	'Savings account',	'1000',	'001'),
('1001',	'11223345',	'Savings account',	'1000',	'002'),
('1002',	'11223346',	'Savings account',	'1000',	'003'),
('1003',	'11223347',	'Savings account',	'1000',	'004'),
('1004',	'11223348',	'Current account',	'1000',	'005'),
('1005',	'11223349',	'Savings account',	'1000',	'006'),
('1006',    '11223350',	'Savings account',	'1000',	'007'),
('1007',	'11223351',	'Current account',	'1000',	'008'),
('1008',	'11223352',	'Savings account',	'1000',	'009'),
('1009',	'11223353',	'Savings account',	'1000',	'010')



insert into transactions (transaction_id, transaction_date, transaction_type, amount, description, account_id) values
('2002',	'2026-04-20',	'UPI',	'1000',	'acc opening balance',	'1000'),
('2003',	'2026-05-01',	'bank transfer',	'3000',	'savings',	'1001'),
('2004',	'2026-05-25',	'upi',	'6000',	'friend',	'1006'),
('2005',	'2026-04-30',	'google pay',	'4000',	'insurance installment',	'1007'),
('2006',	'2026-05-15',	'upi',	'7000',	'savings',	'1004')




insert into loans (loan_id, loan_amount, interest_rate, loan_type, start_date, term_months, status, customer_id) values
('9001',	'100000',	'3.00',	'car loan',	'2026-05-01',	'12',	'active',	'001'),
('9002',	'150000',	'2.75',	'business loan',	'2026-05-01',	'12',	'active',	'004'),
('9003',	'100000',	'3.00',	'business loan',	'2026-05-01',	'12',	'active',	'005'),
('9004',	'200000',	'2.50',	'Home loan',	'2026-05-01',	'12',	'active',	'008'),
('9005',	'100000',	'3.00',	'business loan',	'2026-05-01',	'12',	'active',	'009')



insert into loan_payments (payment_id, payment_amount, payment_date, loan_id) values
('5002',	'7000',	'2026-06-03',	'9002'),
('5003',	'9000',	'2026-06-03',	'9003'),
('5004',	'10000', '2026-06-01', 	'9004'),
('5005',	'60000', '2026-06-06', 	'9005')
