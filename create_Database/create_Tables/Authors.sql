use AragonMunicipalLibrary
;
go

create table ItemCollection.Authors
(
    author_ID   int         not null IDENTITY (1,1) PRIMARY KEY,
    first_name   varchar(50) NOT NULL,
    middle_name varchar(50) NULL,
    last_name   varchar(50) NOT NULL,
)
;

go