use AragonMunicipalLibrary
-- ;
-- go


create table ItemCollection.Copies
(
    copy_ID  int not null IDENTITY (1,1) PRIMARY KEY,
    copy_amt int not null,
    on_loan  int not null,
    on_reserve int not null
--     loanable bit not null -- BOOLEAN
)
;
go

--Hershey: add column if copy is loanable or not, required for task 7 (views)
ALTER TABLE ItemCollection.Copies ADD loanable char(1) default 'N'

--add check constraint to ensure loanable is either Y or N

-- loanable will be in the VIEWS. see assignment outline at one of the task, 7, 8, 9 or 10 for more info
-- alter table Items.Copies
-- drop column loanable
-- ;
-- go

alter table ItemCollection.Copies ADD on_reserve int

select * from ItemCollection.Copies