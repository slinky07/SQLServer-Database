use AragonMunicipalLibrary
;
go


create table Library.Genre
(
    genre_ID int         not null IDENTITY (1,1) primary key,
    genre    varchar(25) not null
)
;
go