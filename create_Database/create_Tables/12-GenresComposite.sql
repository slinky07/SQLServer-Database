use AragonMunicipalLibrary
;
go

/**
 @table ItemCollection.GenreComposite is a composite key of ItemCollection.Author to implement many to many relationship
*/
create table ItemCollection.GenresComposite
(
    title_ID int not null,
    genre_ID int not null,
    PRIMARY KEY (title_ID, genre_ID)
)
;

go