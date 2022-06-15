use AragonMunicipalLibrary
;
go

-- populate table Library.genre
insert into ItemCollection.genre (genre) values ('Fantasy');
insert into ItemCollection.genre (genre) values ('Science Fiction');
insert into ItemCollection.genre (genre) values ('Mystery');
insert into ItemCollection.genre (genre) values ('Romance');
insert into ItemCollection.genre (genre) values ('Thriller');
insert into ItemCollection.genre (genre) values ('Drama');
insert into ItemCollection.genre (genre) values ('Action');
insert into ItemCollection.genre (genre) values ('Adventure');
insert into ItemCollection.genre (genre) values ('Comedy');
insert into ItemCollection.genre (genre) values ('War');
insert into ItemCollection.genre (genre) values ('Western');

-- populate table Library.publisher
insert into ItemCollection.publisher (publisher) values ('Random House');
insert into ItemCollection.publisher (publisher) values ('Harper Collins');
insert into ItemCollection.publisher (publisher) values ('Penguin Books');
insert into ItemCollection.publisher (publisher) values ('Simon & Schuster');
insert into ItemCollection.publisher (publisher) values ('Bantam Books');
insert into ItemCollection.publisher (publisher) values ('Doubleday');
insert into ItemCollection.publisher (publisher) values ('Vintage Books');
insert into ItemCollection.publisher (publisher) values ('Scholastic');
insert into ItemCollection.publisher (publisher) values ('Harper Business');
insert into ItemCollection.publisher (publisher) values ('Harper Paperbacks');
insert into ItemCollection.publisher (publisher) values ('Harper Collins');

-- populate table Library.author
insert into ItemCollection.Authors (first_name, last_name) values ('J.K.', 'Rowling');
insert into ItemCollection.Authors (first_name, last_name) values ('J.R.R.', 'Tolkien');
insert into ItemCollection.Authors (first_name, last_name) values ('Harper', 'Lee');
insert into ItemCollection.Authors (first_name, last_name) values ('Danielle', 'Steel');
insert into ItemCollection.Authors (first_name, last_name) values ('Alexander', 'Pushkin');
insert into ItemCollection.Authors (first_name, last_name) values ('Dr', 'Seuss');
insert into ItemCollection.Authors (first_name, last_name) values ('Leo', 'Tolstoy');
insert into ItemCollection.Authors (first_name, last_name) values ('Stephen', 'king');
insert into ItemCollection.Authors (first_name, last_name) values ('Anne', 'Rice');
insert into ItemCollection.Authors (first_name, last_name) values ('Beatrix', 'Potter');
insert into ItemCollection.Authors (first_name, last_name) values ('Zane', 'Grey');

-- populate table ItemCollection.copies
insert into ItemCollection.copies (copy_amt) VALUES (3);
insert into ItemCollection.copies (copy_amt) VALUES (2);
insert into ItemCollection.copies (copy_amt) VALUES (10);
insert into ItemCollection.copies (copy_amt) VALUES (5);
insert into ItemCollection.copies (copy_amt) VALUES (12);
insert into ItemCollection.copies (copy_amt) VALUES (13);
insert into ItemCollection.copies (copy_amt) VALUES (14);
insert into ItemCollection.copies (copy_amt) VALUES (15);
insert into ItemCollection.copies (copy_amt) VALUES (16);
insert into ItemCollection.copies (copy_amt) VALUES (17);
insert into ItemCollection.copies (copy_amt) VALUES (67);
insert into ItemCollection.copies (copy_amt) VALUES (8);
insert into ItemCollection.copies (copy_amt) VALUES (59);
insert into ItemCollection.copies (copy_amt) VALUES (4);
insert into ItemCollection.copies (copy_amt) VALUES (46);
insert into ItemCollection.copies (copy_amt) VALUES (11);
insert into ItemCollection.copies (copy_amt) VALUES (31);
insert into ItemCollection.copies (copy_amt) VALUES (18);
insert into ItemCollection.copies (copy_amt) VALUES (19);
insert into ItemCollection.copies (copy_amt) VALUES (20);
insert into ItemCollection.copies (copy_amt) VALUES (21);

-- populate table ItemCollection.Title
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Philosopher''s Stone', 'A young wizard, Harry Potter, discovers that he is the only one who can stop the evil Voldemort, who is trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Chamber of Secrets', 'Harry Potter and the Chamber of Secrets is the second book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is the third book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Goblet of Fire', 'Harry Potter and the Goblet of Fire is the fourth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Order of the Phoenix', 'Harry Potter and the Order of the Phoenix is the fifth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Half-Blood Prince', 'Harry Potter and the Half-Blood Prince is the sixth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Deathly Hallows', 'Harry Potter and the Deathly Hallows is the seventh book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('The Hobbit', 'The Hobbit is the first of three volumes in the epic adventure novel The Lord of the Rings. It is the first volume in the New Zealand edition of the classic English novel, and the first in the New Zealand edition of the classic American novel, The Fellowship of the Ring.', 2);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('To kill a Mockingbird', 'To kill a mockingbird is a novel written by Harper Lee published in 1960. It is considered one of the best-selling novels of all time and is considered a classic of American literature.', 3);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Great Gatsby', 'The Great Gatsby is a 1925 novel written by F. Scott Fitzgerald that follows the story of a millionaire Jay Gatsby and his love for the beautiful Daisy Buchanan, of whom he has never met.', 4);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Lord of the Rings', 'The Lord of the Rings is a fantasy novel written by English author J. R. R. Tolkien. The story began as a sequel to Tolkiens 1937 fantasy novel The Hobbit, but eventually developed into a much larger work.', 5);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Hunger Games', 'The Hunger Games is a 2009 science fiction novel written by Suzanne Collins. It is a dystopian novel set in the year of the virtual reality game The Hunger Games, which was created by the American company The Hunger Games.', 6);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Day', 'The Day is a novel written by American author John Green. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 7);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Fault in Our Stars', 'The Fault in Our Stars is a novel written by John Green. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 8);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Book Thief', 'The Book Thief is a novel written by Markus Zusak. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 9);
insert into ItemCollection.titles (title, synopsis, publisher_ID) VALUES ('The Catcher in the Rye', 'The Catcher in the Rye is a novel written by J. D. Salinger. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 10);

-- populate table AuthorComposite
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 1);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 2);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 3);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 4);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 5);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 6);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (1, 7);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (2, 8);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (3, 9);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (4, 10);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (2, 11);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (4, 12);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (5, 13);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (6, 14);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (7, 15);
insert into ItemCollection.AuthorComposite (author_ID, title_ID) values (8, 16);

-- populate table GenreComposite
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 1);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 2);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 3);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 4);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 5);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 6);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (1, 7);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (2, 8);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (3, 9);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (4, 10);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (2, 11);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (4, 12);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (5, 13);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (6, 14);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (7, 15);
insert into ItemCollection.GenreComposite (genre_ID, title_ID) values (8, 16);

-- populate table ItemCollection
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-1-6', 1, 1, 'Paperback', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding) VALUES ( '10-902734-1-6', 1, 2, 'Hardcover');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-1-7', 1, 3, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding) VALUES ( '20-902734-1-6', 1, 4, 'Hardcover');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-1-8', 1, 5, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-1-9', 1, 6, 'Paperback', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding) VALUES ( '30-902734-1-6', 1, 7, 'Hardcover');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-2-9', 2, 8, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-4-6', 4, 10, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding) VALUES ( '40-902734-1-6', 2, 11, 'Hardcover');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-5-6', 4, 12, 'Paperback', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-6-6', 5, 13, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-7-6', 6, 14, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding) VALUES ( '50-902734-1-6', 7, 15, 'Hardcover');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-8-6', 8, 16, 'Hardcover', 'English');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-3-6', 1, 1, 'Paperback', 'Japanese');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-302734-4-6', 1, 2, 'Paperback', 'Hindi');
insert into ItemCollection.Items (isbn_id, title_ID, copy_ID, binding, translation) VALUES ( '80-902734-2-6', 1, 3, 'Paperback', 'English');

-- populate table Cities
insert into Membership.Cities (city) VALUES ('Montreal');
insert into Membership.Cities (city) VALUES ('Saint-Jean-Sur-Richelieu');
insert into Membership.Cities (city) VALUES ('Saint-Constant');
insert into Membership.Cities (city) VALUES ('Candiac');
insert into Membership.Cities (city) VALUES ('Saint-Anicet');
insert into Membership.Cities (city) VALUES ('Sorel-Tracy');
insert into Membership.Cities (city) VALUES ('Laval');
insert into Membership.Cities (city) VALUES ('Sainte-Foy');
insert into Membership.Cities (city) VALUES ('Mauricie');
insert into Membership.Cities (city) VALUES ('L''Assomption');
insert into Membership.Cities (city) VALUES ('Pointe-Claire');

select * from Membership.Cities;

--insert into table Membership.addresses
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '1', '1', 'rue de la paix', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (2,  '1', 'avenue 1', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (3, '1', '1', 'rue de la joie', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (4,  '1', 'avenue 2', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (5, '1', '1', 'rue de la haine', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (6,  '1', 'voie lactee', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (7, '1', '1', 'rue de lamour', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (8,  '1', 'avenue 4', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (9,  '1', 'avenue ravages', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (10, '1', 'avenue 5', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (11, '1', '1', 'rue des imbeciles', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (1,  '1', 'avenue 6', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (2, '1', '1', 'rue de la idiotie', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '1', '1', 'rue des idiots', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '1', '1', 'rue des ipads', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (1,  '1', 'avenue 7', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '1', '1', 'rue des androids', 'H1H1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (1,  '1', 'avenue 8', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '1', '1', 'rue principale', 'H1H1H1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (2, '1', '1', 'rue poulet', 'H1H1H1');

select * from Membership.Addresses;
-- populate table Membership.Membership
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'Doe', '1991-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'moi', 'Doe', '1992-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'emilie', 'ouil', '1993-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'julie', 'sauve', '1994-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'amos', 'daragon', '1995-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('justin', 'idiot', 'trudeau', '1996-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('another', 'william', 'Doe', '1997-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'francis', 'sauve', '1981-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'julien', 'roberts', '1941-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'louis', 'doeeee', '1951-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Johanna', 'michelle', 'carter', '1951-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'aloa', 'aloa', '1971-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'japou', 'japou', '1981-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'alias', 'Eod', '1991-02-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'Doeee', '1982-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'Doeeeee', '1983-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'Doeeeeee', '1984-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'Dooeeeeee', '1985-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'Dooooeeee', '1986-01-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('Jane', 'Dooeeee', '1987-05-19', GETDATE());
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, CARD_ISSUE_DATE) VALUES ('John', 'Dooe', '1999-07-19', GETDATE());

select*from Membership.Members;
-- Delete from Membership.Members;

-- populate table Membership.Adults
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (1, 1, 'AnEmail@gmail.com', '514-876-5309', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (2, 2, '1some@gmail.com', '514-876-5302', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (3, 3, '2some@gmail.com', '514-876-5303', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (4, 4, '3some@gmail.com', '514-876-5304', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (5, 5, '4some@gmail.com', '514-876-5305', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (6, 6, '5some@gmail.com', '514-876-5306', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (7, 7, '6some@gmail.com', '514-876-5307', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (8, 8, '7some@gmail.com', '514-876-5308', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (9, 9, '8some@gmail.com', '514-876-5409', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (10, 10, '9some@gmail.com', '514-876-5402', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (11, 11, 'some1@gmail.com', '514-876-5403', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (12, 12, 'some2@gmail.com', '514-876-5404', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (13, 13, 'some3@gmail.com', '514-876-5405', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (14, 14, 'some4@gmail.com', '514-876-5406', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (15, 15, 'some5@gmail.com', '514-876-5407', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (16, 16, 'some6@gmail.com', '514-876-5408', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (17, 17, 'some7@gmail.com', '514-876-5409', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (18, 18, 'some8@gmail.com', '514-876-5402', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (19, 19, 'some9@gmail.com', '514-876-5403', 'http://www.google.com/');
insert into Membership.Adults (MEMBER_ID, ADDRESS_ID, EMAIL, PHONE_NUMBER, PHOTOGRAPH) VALUES (20, 20, 'some0@gmail.com', '514-876-5404', 'http://www.google.com/');

select * from Membership.Adults;

-- populate table Membership.juveniles
-- TODO: the junevile table is setting a member both as a juvenile and an adult. This is not correct. we need to fix this.
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (1, 1);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (2, 2);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (3, 3);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (4, 4);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (5, 5);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (6, 6);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (7, 7);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (8, 8);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (9, 9);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (10, 10);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (11, 11);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (12, 12);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (13, 13);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (14, 14);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (15, 15);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (16, 16);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (17, 17);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (18, 18);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (19, 19);
insert into Membership.Juveniles (member_ID, adult_ID) VALUES (20, 20);

select*from Membership.Juveniles

-- populate table Borrows.loans
insert into Borrows.loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 1, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 2, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 3, GETDATE(), DATEADD(day, 14, GETDATE()));
insert into Borrows.loans (isbn_ID, member_ID, checkout_date, due_date) VALUES ('80-902734-5-6', 4, GETDATE(), DATEADD(dw, 14, GETDATE()));
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 5);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 6);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 7);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 8);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 9);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('10-902734-1-6', 10);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('20-902734-1-6', 11);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('30-902734-1-6', 12);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('40-902734-1-6', 13);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('50-902734-1-6', 14);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-2-6', 15);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-3-6', 16);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-302734-4-6', 17);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-5-6', 18);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-6-6', 19);
insert into Borrows.loans (isbn_ID, member_ID) VALUES ('80-902734-7-6', 20);

-- populate table Borrows.Reservations
insert into Borrows.Reservations (isbn_ID, member_ID, log_date) VALUES ('80-902734-1-6', 1, CONVERT(date, GETDATE()));
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 2);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 3);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 4);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 5);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 6);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 7);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-6', 8);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-5-6', 9);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 10);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 11);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 12);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 13);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 14);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 15);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 16);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 17);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 18);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 19);
insert into Borrows.Reservations (isbn_ID, member_ID) VALUES ('80-902734-1-8', 20);

-- make a total of every copies on_loan
select count(on_loan) as total_on_loan from ItemCollection.Copies;