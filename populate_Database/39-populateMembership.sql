use AragonMunicipalLibrary;

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
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (1, '556', '2345', 'rue de Lota', 'H2N1H1');
insert into Membership.Addresses (city_ID, civic_number, street, postal_code) VALUES (2, '223', 'rue de la Fin de Session', 'H3Z1W1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (3, '06', '7789', 'rue de la Fin de Session', 'H3Z1W1');
insert into Membership.Addresses (city_ID, unit_number,civic_number, street, postal_code) VALUES (1,'44' ,'123', 'rue Saint-Denis', 'H3Z1W1');
insert into Membership.Addresses (city_ID, unit_number, civic_number, street, postal_code) VALUES (11,'888' ,'2345', 'rue Saint-Sauveur', 'H3Z1W1');
select * from Membership.Addresses;

-- populate table Membership.Membership (Adults)
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('John', 'Deer', '1991-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Mary', 'Jane', 'Doe', '1992-01-19');
insert into Membership.Members (FIRST_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Karl', 'Marx', '1993-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Anne', 'Julie', 'Sauve', '1994-01-19');
insert into Membership.Members (FIRST_NAME, MIDDLE_NAME, LAST_NAME, DATE_OF_BIRTH) VALUES ('Leonas', 'Amos', 'Daragon', '1995-01-19');


exec Membership.sp_insert_adults @member_id = 1, @address_id = 1, @email = 'AnEmail@Gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 2, @address_id = 2, @email = '1some@gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 3, @address_id = 3, @email = '1AnEmail@Gmail.com', @phone_number = '514-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 4, @address_id = 4, @email = '2AnEmail@Gmail.com', @phone_number = '524-876-5309', @photograph = 'http://www.google.com/photo.jpg';
exec Membership.sp_insert_adults @member_id = 5, @address_id = 5, @email = '3AnEmail@Gmail.com', @phone_number = '534-876-5309', @photograph = 'http://www.google.com/photo.jpg';
select * from Membership.Adults
;
