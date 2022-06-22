-- use AragonMunicipalLibrary
-- ;
-- go

create table Borrows.Loans
(
    loan_ID       int      not null IDENTITY (1,1) Primary Key,
    isbn_ID       char(13)      not null, -- check if Items.isbn_ID.copies.loanable == 1 (true)
    member_ID     int      not null, -- check if Members.member_ID.dateadd(year, 1, date_issued) < getdate()
    checkout_date datetime not null,
    return_date  datetime not null,
    due_date      datetime not null,
    return_status bit      not null
)
;
go
