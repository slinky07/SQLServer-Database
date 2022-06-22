use AragonMunicipalLibrary
;
go

create table Borrows.Reservations
(
    reserve_ID int      not null IDENTITY (1,1) Primary Key, -- confirm (Reservations.count(member_ID) where == member input) < 4
    isbn_ID    char(13) not null,                            -- check Items.isbn_ID.copies.loanable == 1 (true)
    member_ID  int      not null,                            -- check if Members.member_ID.dateadd(year, 1, date_issued) < getdate()
    log_date   datetime not null
)
;
go

-- -- add column to Borrows.Reservations idbn_ID char(13) not null,
-- alter table Borrows.Reservations add idsn_ID char(13) not null
-- ;
-- go

