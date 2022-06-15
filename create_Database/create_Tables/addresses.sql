use AragonMunicipalLibrary
;
go

create table Membership.Addresses
(
    address_ID   int primary key not null identity (1,1),
    city_ID      int             not null,
    unit_number  varchar(10)     null,
    civic_number varchar(10)     not null,
    street       varchar(50)     not null,
    province     char(2)         not null,
    postal_code  char(6)         not null
)
;
go
