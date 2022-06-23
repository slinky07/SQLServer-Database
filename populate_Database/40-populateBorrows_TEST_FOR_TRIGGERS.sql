use AragonMunicipalLibrary
;

-- populate table Borrows.loans
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 1, GETDATE())
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 2, GETDATE())
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 3, GETDATE())
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 4, GETDATE())
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 5);
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 1, dateadd(yy, -2, getdate()));
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date) VALUES ('80-902734-5-6', 2, dateadd(yy, -2, getdate()));
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 2, dateadd(yy, -2, getdate()), dateadd(yy, -1, getdate()));
select * from Borrows.Loans;


-- 1,       80-902734-5-6,  1,    2022-06-22 23:09:49.250,  ,2022-07-06 23:09:49.250,false
-- 2,       80-902734-5-6,  2 ,   2022-06-22 23:09:49.253,  ,2022-07-06 23:09:49.253,false

-- populate table Borrows.Reservations
insert into Borrows.Reservations (isbn_ID, member_ID, log_date) VALUES ('80-902734-1-6', 1, CONVERT(date, GETDATE()));
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 2);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 3);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 4);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 5);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 6);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 7);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 8);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-5-6', 9);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 10);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 11);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 12);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 13);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 14);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 15);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 16);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 17);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 18);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 19);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 20);
select * from Borrows.Reservations
;
go

-- make a total of every copies on_loan
select count(on_loan) as total_on_loan from ItemCollection.Copies
;
go
