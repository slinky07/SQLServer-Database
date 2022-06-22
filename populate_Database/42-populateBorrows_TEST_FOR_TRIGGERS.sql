use AragonMunicipalLibrary
;

-- populate table Borrows.loans
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 1, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 2, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 3, GETDATE(), DATEADD(day, 14, GETDATE()));
insert into Borrows.Loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 4, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 5);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 6);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 7);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 8);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 9);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('10-902734-1-6', 10);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('20-902734-1-6', 11);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('30-902734-1-6', 12);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('40-902734-1-6', 13);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('50-902734-1-6', 14);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-2-6', 15);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-3-6', 16);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-302734-4-6', 17);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 18);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-6-6', 19);
insert into Borrows.Loans (isbn_ID, member_ID) VALUES ('80-902734-7-6', 20);
select * from Borrows.Loans;

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
