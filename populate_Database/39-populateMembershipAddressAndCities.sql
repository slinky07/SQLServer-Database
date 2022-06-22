use AragonMunicipalLibrary
;

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
select * from Membership.Addresses
;
go