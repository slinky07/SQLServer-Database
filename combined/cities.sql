use AragonMunicipalLibrary
;
go

create table Members.Cities
(
    city_ID int         not null identity (1,1) primary key,
    city    varchar(50) not null,
)
;
exec sp_columns Cities
exec sp_columns Addresses
drop table Members.Cities;

go