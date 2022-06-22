use AragonMunicipalLibrary
;


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

select * from Membership.Adults
;
go