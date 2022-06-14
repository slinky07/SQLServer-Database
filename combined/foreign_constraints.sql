use AragonMunicipalLibrary
;
go

ALTER TABLE Borrows.Loans
ADD CONSTRAINT fk_Loans_Items
FOREIGN KEY (isbn_ID) REFERENCES Items.Items(isbn_ID)
;
go

ALTER TABLE Borrows.Loans
ADD CONSTRAINT fk_Loans_Members
FOREIGN KEY (member_ID) REFERENCES Members.Members(member_ID)
;
go

ALTER TABLE Borrows.Reservations
ADD CONSTRAINT fk_Reservations_Items
FOREIGN KEY (isbn_ID) REFERENCES Items.Items(isbn_ID)
;
go

alter table Borrows.Reservations drop constraint fk_Reservations_Items;
alter table Borrows.Loans drop constraint fk_Loans_Items;


ALTER TABLE Borrows.Reservations
ADD CONSTRAINT fk_Reservations_Members
FOREIGN KEY (member_ID) REFERENCES Members.Members(member_ID)
;
go

ALTER TABLE Members.Addresses
ADD CONSTRAINT fk_Addresses_Cities
FOREIGN KEY (city_ID) REFERENCES Members.Cities(city_ID);
;
go
alter table Members.Addresses drop constraint fk_Addresses_Cities;

alter table Items.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_titles
    FOREIGN KEY (title_ID) references Items.Titles(title_ID)
;

alter table Items.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_authors
    FOREIGN KEY (author_ID) references Items.Authors(author_ID)
;
alter table Items.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_titles
    FOREIGN KEY (title_ID) references Items.Titles(title_ID)
;

alter table Items.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_genre
    FOREIGN KEY (genre_ID) references Items.Genre(genre_ID)
;
/*
 REMOVED SINCE IT HAS JUNCTION TABLE TO IMPLEMENT MANY TO MANY RELATIONSHIPS
 */
-- alter table Items.Titles
--     ADD CONSTRAINT fk_titles_authors
--     FOREIGN KEY (author_ID) REFERENCES Items.Authors(author_ID) --unsure
-- ;
--
-- alter table Items.Titles
--     ADD CONSTRAINT fk_titles_genre
--     FOREIGN KEY (genre_ID) REFERENCES Items.Genre(genre_ID) --unsure
-- ;
--
-- alter table Items.Titles
--     drop constraint fk_titles_genre
-- ;


alter table Items.Titles
    ADD CONSTRAINT fk_titles_publishers
    FOREIGN KEY (publisher_ID) REFERENCES Items.Publisher(publisher_ID)
;

alter table Items.Items
    ADD CONSTRAINT fk_items_title
    FOREIGN KEY (title_ID) references Items.Titles(title_ID)
;

alter table Items.Items
    ADD CONSTRAINT fk_items_copy
    FOREIGN KEY (copy_ID) references Items.Copies(copy_ID)
;

alter table Members.Adults
    ADD CONSTRAINT fk_adults_members
    FOREIGN KEY (member_ID) REFERENCES Members.Members(member_ID)
;
alter table Members.Adults
    ADD CONSTRAINT fk_adults_addresses
    FOREIGN KEY (address_ID) REFERENCES Members.Addresses(address_ID)
;

alter table Members.Juveniles
    ADD CONSTRAINT fk_juveniles_members
    FOREIGN KEY (member_ID) REFERENCES Members.Members(member_ID)
;

alter table Members.Juveniles
    ADD CONSTRAINT fk_juveniles_addresses
    FOREIGN KEY (adult_ID) REFERENCES Members.Adults(adult_ID)
;
go

