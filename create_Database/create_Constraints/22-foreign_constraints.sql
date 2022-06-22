use AragonMunicipalLibrary
;
go

ALTER TABLE Borrows.Loans
    ADD CONSTRAINT fk_Loans_Items
    FOREIGN KEY (isbn_ID) REFERENCES ItemCollection.Items(isbn_ID)
;
go

ALTER TABLE Borrows.Loans
    ADD CONSTRAINT fk_Loans_Members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;
go

ALTER TABLE Borrows.Reservations
    ADD CONSTRAINT fk_Reservations_Items
    FOREIGN KEY (isbn_ID) REFERENCES ItemCollection.Items(isbn_ID)
;
go

ALTER TABLE Borrows.Reservations
    ADD CONSTRAINT fk_Reservations_Members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;
go

ALTER TABLE Membership.Addresses
    ADD CONSTRAINT fk_Addresses_Cities
    FOREIGN KEY (city_ID) REFERENCES Membership.Cities(city_ID);
;
go

alter table ItemCollection.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_titles
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;

alter table ItemCollection.AuthorComposite
    ADD CONSTRAINT fk_AuthorComposite_authors
    FOREIGN KEY (author_ID) references ItemCollection.Authors(author_ID)
;
alter table ItemCollection.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_titles
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;

alter table ItemCollection.GenreComposite
    ADD CONSTRAINT fk_GenreComposite_genre
    FOREIGN KEY (genre_ID) references ItemCollection.Genre(genre_ID)
;

alter table ItemCollection.Titles
    ADD CONSTRAINT fk_titles_publishers
    FOREIGN KEY (publisher_ID) REFERENCES ItemCollection.Publisher(publisher_ID)
;

alter table ItemCollection.Items
    ADD CONSTRAINT fk_items_title
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;

alter table ItemCollection.Items
    ADD CONSTRAINT fk_items_copy
    FOREIGN KEY (copy_ID) references ItemCollection.Copies(copy_ID)
;

alter table Membership.Adults
    ADD CONSTRAINT fk_adults_members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;
alter table Membership.Adults
    ADD CONSTRAINT fk_adults_addresses
    FOREIGN KEY (address_ID) REFERENCES Membership.Addresses(address_ID)
;

alter table Membership.Juveniles
    ADD CONSTRAINT fk_juveniles_members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;

alter table Membership.Juveniles
    ADD CONSTRAINT fk_juveniles_addresses
    FOREIGN KEY (adult_ID) REFERENCES Membership.Adults(adult_ID)
;
go

