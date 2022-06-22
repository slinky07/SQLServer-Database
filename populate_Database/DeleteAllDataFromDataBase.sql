use AragonMunicipalLibrary;

delete from Borrows.Loans;
delete from Borrows.Reservations;

delete from ItemCollection.Authors;
delete from ItemCollection.AuthorsComposite;
delete from ItemCollection.Copies;
delete from ItemCollection.Genres;
delete from ItemCollection.GenresComposite
delete from ItemCollection.Items;
delete from ItemCollection.Titles;
delete from ItemCollection.Publisher;


delete from Membership.Addresses;
delete from Membership.Cities;
delete from Membership.Adults;
delete from Membership.Juveniles;
delete from Membership.Members;