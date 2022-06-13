use AragonMunicipalLibrary
;
go

create table Items.AuthorComposite
(
    title_ID  int not null,
    author_ID int not null
	PRIMARY KEY (title_ID, author_ID)
)
;
go