use AragonMunicipalLibrary;
;
go


create table ItemCollection.Genres
(
    genre_ID int not null IDENTITY (1,1) primary key,
    genre varchar(25) not null
)
;
go