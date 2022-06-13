use AragonMunicipalLibrary
;
go


create table Library.Titles
(
    title_ID     int           not null IDENTITY (1,1) primary key,
    title        varchar(100)  not null,
    synopsis     varchar(2000) null,
    author_ID    int           not null,
    genre_ID     int           not null,
    publisher_ID int           not null
)
;
go
