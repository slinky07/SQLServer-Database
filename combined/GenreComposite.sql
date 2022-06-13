use AragonMunicipalLibrary
;
go

create table Items.GenreComposite
(
    title_ID int not null,
    genre_ID int not null,
    PRIMARY KEY (title_ID, genre_ID)
)
;

go