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

alter table ItemCollection.AuthorsComposite
    ADD CONSTRAINT fk_AuthorsComposite_titles
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;
go

alter table ItemCollection.AuthorsComposite
    ADD CONSTRAINT fk_AuthorsComposite_authors
    FOREIGN KEY (author_ID) references ItemCollection.Authors(author_ID)
;
go

alter table ItemCollection.GenresComposite
    ADD CONSTRAINT fk_GenresComposite_titles
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;
go

alter table ItemCollection.GenresComposite
    ADD CONSTRAINT fk_GenresComposite_genres
    FOREIGN KEY (genre_ID) references ItemCollection.Genres(genre_ID)
;
go

alter table ItemCollection.Titles
    ADD CONSTRAINT fk_titles_publishers
    FOREIGN KEY (publisher_ID) REFERENCES ItemCollection.Publishers(publisher_ID)
;
go

alter table ItemCollection.Items
    ADD CONSTRAINT fk_items_title
    FOREIGN KEY (title_ID) references ItemCollection.Titles(title_ID)
;
go

alter table ItemCollection.Items
    ADD CONSTRAINT fk_items_copy
    FOREIGN KEY (copy_ID) references ItemCollection.Copies(copy_ID)
;
go

alter table Membership.Adults
    ADD CONSTRAINT fk_adults_members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;
go

alter table Membership.Adults
    ADD CONSTRAINT fk_adults_addresses
    FOREIGN KEY (address_ID) REFERENCES Membership.Addresses(address_ID)
;
go

alter table Membership.Juveniles
    ADD CONSTRAINT fk_juveniles_members
    FOREIGN KEY (member_ID) REFERENCES Membership.Members(member_ID)
;
go

alter table Membership.Juveniles
    ADD CONSTRAINT fk_juveniles_adult
    FOREIGN KEY (adult_ID) REFERENCES Membership.Adults(adult_ID)
;
go

