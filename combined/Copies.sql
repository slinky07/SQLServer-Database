use AragonMunicipalLibrary
;
go


create table Items.Copies
(
    copy_ID  int not null IDENTITY (1,1) PRIMARY KEY,
    copy_amt int not null,
    on_loan  int not null,
--     loanable bit not null -- BOOLEAN
)
;
go

-- loanable will be in the VIEWS. see assignment outline at one of the task, 7, 8, 9 or 10 for more info
-- alter table Items.Copies
-- drop column loanable
-- ;
-- go