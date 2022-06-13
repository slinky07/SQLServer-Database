use AragonMunicipalLibrary
;
go

create table Members.Cities
(
    city_id int         not null identity (1,1) primary key,
    city    varchar(50) not null,
)
;

go