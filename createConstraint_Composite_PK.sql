use AragonMunicipalLibrary
;
go

alter table Library.AuthorComposite
    ADD CONSTRAINT pk_AuthorComposite_composite
    PRIMARY KEY (title_ID, author_ID)
;

alter table Library.GenreComposite
    ADD CONSTRAINT pk_GenreComposite_composite
    PRIMARY KEY (title_ID, genre_ID)
;
go