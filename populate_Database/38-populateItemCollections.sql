use AragonMunicipalLibrary
;
go

/*When you delete all data and repopulate, it wont work as it does not reset
  the PK assignment so it will break it, unfortunately need to drop database and rebuild*/
-- populate table ItemCollection.genres
insert into ItemCollection.Genres (genre) values ('Fantasy');
insert into ItemCollection.Genres (genre) values ('Science Fiction');
insert into ItemCollection.Genres (genre) values ('Mystery');
insert into ItemCollection.Genres (genre) values ('Romance');
insert into ItemCollection.Genres (genre) values ('Thriller');
insert into ItemCollection.Genres (genre) values ('Drama');
insert into ItemCollection.Genres (genre) values ('Action');
insert into ItemCollection.Genres (genre) values ('Adventure');
insert into ItemCollection.Genres (genre) values ('Comedy');
insert into ItemCollection.Genres (genre) values ('War');
insert into ItemCollection.Genres (genre) values ('Western');

select * from ItemCollection.Genres;

-- populate table ItemCollection.publisher
insert into ItemCollection.Publisher (publisher) values ('Random House');
insert into ItemCollection.Publisher (publisher) values ('Harper Collins');
insert into ItemCollection.Publisher (publisher) values ('Penguin Books');
insert into ItemCollection.Publisher (publisher) values ('Simon & Schuster');
insert into ItemCollection.Publisher (publisher) values ('Bantam Books');
insert into ItemCollection.Publisher (publisher) values ('Doubleday');
insert into ItemCollection.Publisher (publisher) values ('Vintage Books');
insert into ItemCollection.Publisher (publisher) values ('Scholastic');
insert into ItemCollection.Publisher (publisher) values ('Harper Business');
insert into ItemCollection.Publisher (publisher) values ('Harper Paperbacks');
insert into ItemCollection.Publisher (publisher) values ('Harper Collins');

select * from ItemCollection.Publisher;

-- populate table ItemCollection.author
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

select * from ItemCollection.Authors;

-- populate table ItemCollection.copies
insert into ItemCollection.Copies (copy_amt) VALUES (3);
insert into ItemCollection.Copies (copy_amt) VALUES (2);
insert into ItemCollection.Copies (copy_amt) VALUES (10);
insert into ItemCollection.Copies (copy_amt) VALUES (5);
insert into ItemCollection.Copies (copy_amt) VALUES (12);
insert into ItemCollection.Copies (copy_amt) VALUES (13);
insert into ItemCollection.Copies (copy_amt) VALUES (14);
insert into ItemCollection.Copies (copy_amt) VALUES (15);
insert into ItemCollection.Copies (copy_amt) VALUES (16);
insert into ItemCollection.Copies (copy_amt) VALUES (17);
insert into ItemCollection.Copies (copy_amt) VALUES (67);
insert into ItemCollection.Copies (copy_amt) VALUES (8);
insert into ItemCollection.Copies (copy_amt) VALUES (59);
insert into ItemCollection.Copies (copy_amt) VALUES (4);
insert into ItemCollection.Copies (copy_amt) VALUES (46);
insert into ItemCollection.Copies (copy_amt) VALUES (11);
insert into ItemCollection.Copies (copy_amt) VALUES (31);
insert into ItemCollection.Copies (copy_amt) VALUES (18);
insert into ItemCollection.Copies (copy_amt) VALUES (19);
insert into ItemCollection.Copies (copy_amt) VALUES (20);
insert into ItemCollection.Copies (copy_amt) VALUES (21);

select * from ItemCollection.Copies;

-- populate table ItemCollection.Title
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Philosopher''s Stone', 'A young wizard, Harry Potter, discovers that he is the only one who can stop the evil Voldemort, who is trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Chamber of Secrets', 'Harry Potter and the Chamber of Secrets is the second book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is the third book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Goblet of Fire', 'Harry Potter and the Goblet of Fire is the fourth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Order of the Phoenix', 'Harry Potter and the Order of the Phoenix is the fifth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Half-Blood Prince', 'Harry Potter and the Half-Blood Prince is the sixth book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('Harry Potter and the Deathly Hallows', 'Harry Potter and the Deathly Hallows is the seventh book in the Harry Potter series. It follows Harry Potter, who has escaped from theprisoner of Azkaban and has worked his way to find the one who has stolen a magical book that allows him to fly. He then must fight the wizard who has been trying to take over the world.', 1);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) values ('The Hobbit', 'The Hobbit is the first of three volumes in the epic adventure novel The Lord of the Rings. It is the first volume in the New Zealand edition of the classic English novel, and the first in the New Zealand edition of the classic American novel, The Fellowship of the Ring.', 2);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('To kill a Mockingbird', 'To kill a mockingbird is a novel written by Harper Lee published in 1960. It is considered one of the best-selling novels of all time and is considered a classic of American literature.', 3);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Great Gatsby', 'The Great Gatsby is a 1925 novel written by F. Scott Fitzgerald that follows the story of a millionaire Jay Gatsby and his love for the beautiful Daisy Buchanan, of whom he has never met.', 4);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Lord of the Rings', 'The Lord of the Rings is a fantasy novel written by English author J. R. R. Tolkien. The story began as a sequel to Tolkiens 1937 fantasy novel The Hobbit, but eventually developed into a much larger work.', 5);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Hunger Games', 'The Hunger Games is a 2009 science fiction novel written by Suzanne Collins. It is a dystopian novel set in the year of the virtual reality game The Hunger Games, which was created by the American company The Hunger Games.', 6);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Day', 'The Day is a novel written by American author John Green. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 7);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Fault in Our Stars', 'The Fault in Our Stars is a novel written by John Green. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 8);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Book Thief', 'The Book Thief is a novel written by Markus Zusak. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 9);
insert into ItemCollection.Titles (title, synopsis, publisher_ID) VALUES ('The Catcher in the Rye', 'The Catcher in the Rye is a novel written by J. D. Salinger. It is the first book in the Green Movement, and is the first book in the Green Movement to be published in hardcover.', 10);

select * from ItemCollection.Titles

-- populate table ItemCollection.AuthorsComposite
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 1);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 2);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 3);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 4);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 5);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 6);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (1, 7);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (2, 8);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (3, 9);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (4, 10);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (2, 11);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (4, 12);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (5, 13);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (6, 14);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (7, 15);
insert into ItemCollection.AuthorsComposite (author_ID, title_ID) values (8, 16);
select * from ItemCollection.AuthorsComposite;
-- populate table ItemCollection.GenresComposite
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 1);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 2);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 3);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 4);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 5);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 6);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (1, 7);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (2, 8);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (3, 9);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (4, 10);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (2, 11);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (4, 12);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (5, 13);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (6, 14);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (7, 15);
insert into ItemCollection.GenresComposite (genre_ID, title_ID) values (8, 16);

select * from ItemCollection.GenresComposite;

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

select * from ItemCollection.Items
;
go