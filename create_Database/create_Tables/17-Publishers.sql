use AragonMunicipalLibrary
;
go

create table ItemCollection.Publisher
(
    publisher_ID int         not null IDENTITY (1,1) primary key,
    publisher    varchar(50) not null
)
;
go