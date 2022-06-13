use AragonMunicipalLibrary
;
go


create table Library.Copies
(
    copy_ID  int not null IDENTITY (1,1) PRIMARY KEY,
    copy_amt int not null,
    on_loan  bit not null,
    loanable bit not null -- BOOLEAN
)
;
go