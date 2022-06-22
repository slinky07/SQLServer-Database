use AragonMunicipalLibrary
;


-- populate table Membership.Membership
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'Doe', '1991-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'moi', 'Doe', '1992-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'emilie', 'ouil', '1993-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'julie', 'sauve', '1994-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'amos', 'daragon', '1995-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('justin', 'idiot', 'trudeau', '1996-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('another', 'william', 'Doe', '1997-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'francis', 'sauve', '1981-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'julien', 'roberts', '1941-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'louis', 'doeeee', '1951-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Johanna', 'michelle', 'carter', '1951-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'aloa', 'aloa', '1971-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'japou', 'japou', '1981-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jane', 'alias', 'Eod', '1991-02-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('JayJay', 'Goulou', '1982-01-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Mary', 'Jane', '1983-01-19');
insert into Membership.Members (FIRST_NAME,middle_name ,LAST_NAME, DATE_OF_BIRTH) VALUES ('Lucy', 'InThe', 'Sky', '1984-01-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Sweet', 'Caaaarrroooollliiineee', '1985-01-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Purple', 'Haze', '1986-01-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Jacques', 'Rousseau', '1987-05-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'Deer', '1999-07-19');
select*from Membership.Members;

-- execute file TeamProject/create_Database/create_procedures/createInsertAdultsProcedure.sql first
-- populate table Membership.Adults
exec Membership.sp_insert_adults @member_id = 1, @address_id = 1, @email = 'AnEmail@Gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 2, @address_id = 2, @email = '1some@gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 3, @address_id = 3, @email = '1AnEmail@Gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 4, @address_id = 4, @email = '2AnEmail@Gmail.com', @phone_number = '524-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 5, @address_id = 5, @email = '3AnEmail@Gmail.com', @phone_number = '534-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 6, @address_id = 6, @email = '4AnEmail@Gmail.com', @phone_number = '544-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 7, @address_id = 7, @email = '5AnEmail@Gmail.com', @phone_number = '554-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 8, @address_id = 8, @email = '6AnEmail@Gmail.com', @phone_number = '564-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 9, @address_id = 9, @email = '7AnEmail@Gmail.com', @phone_number = '574-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 10, @address_id = 10, @email = '9AnEmail@Gmail.com', @phone_number = '584-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 11, @address_id = 11, @email = 'AnEmail1@Gmail.com', @phone_number = '594-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 12, @address_id = 12, @email = 'AnEmail2@Gmail.com', @phone_number = '511-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 13, @address_id = 13, @email = 'AnEmail3@Gmail.com', @phone_number = '512-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 14, @address_id = 14, @email = 'AnEmail4@Gmail.com', @phone_number = '513-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 15, @address_id = 15, @email = 'AnEmail5@Gmail.com', @phone_number = '515-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 16, @address_id = 16, @email = 'AnEmail6@Gmail.com', @phone_number = '516-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 17, @address_id = 17, @email = 'AnEmail7@Gmail.com', @phone_number = '517-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 18, @address_id = 18, @email = 'AnEmail8@Gmail.com', @phone_number = '518-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 19, @address_id = 19, @email = 'AnEmail9@Gmail.com', @phone_number = '519-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 20, @address_id = 20, @email = 'AnEmail0@Gmail.com', @phone_number = '614-876-5309', @photograph = 'http://www.google.com/photo.jpg';


select * from Membership.Adults
;
go