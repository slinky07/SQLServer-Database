-- use AragonMunicipalLibrary
-- ;
-- go

/**
 @table ItemCollection.AuthorComposite is a composite key of ItemCollection.Author to implement many to many relationship
*/
create table  ItemCollection.AuthorsComposite
(
    title_ID  int not null,
    author_ID int not null,
	PRIMARY KEY (title_ID, author_ID)
)
;
go