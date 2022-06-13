use AragonMunicipalLibrary
;
go

alter table Library.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_titles
    FOREIGN KEY (title_ID) references Library.Titles(title_ID)
;

alter table Library.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_authors
    FOREIGN KEY (author_ID) references Library.Authors(author_ID)
;
alter table Library.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_titles
    FOREIGN KEY (title_ID) references Library.Titles(title_ID)
;

alter table Library.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_genre
    FOREIGN KEY (genre_ID) references Library.Genre(genre_ID)
;

alter table Library.Titles
    ADD CONSTRAINT fk_titles_authors
    FOREIGN KEY (author_ID) REFERENCES Library.Authors(author_ID) --unsure
;

alter table Library.Titles
    ADD CONSTRAINT fk_titles_genre
    FOREIGN KEY (genre_ID) REFERENCES Library.Genre(genre_ID) --unsure
;

alter table Library.Titles
    ADD CONSTRAINT fk_titles_publishers
    FOREIGN KEY (publisher_ID) REFERENCES Library.Publisher(publisher_ID)
;

alter table Library.Items
    ADD CONSTRAINT fk_items_title
    FOREIGN KEY (title_ID) references Library.Titles(title_ID)
;

alter table Library.Items
    ADD CONSTRAINT fk_items_copy
    FOREIGN KEY (copy_ID) references Library.Copies(copy_ID)
;
go