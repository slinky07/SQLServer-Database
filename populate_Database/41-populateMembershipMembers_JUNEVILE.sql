USE AragonMunicipalLibrary;
go
-- populate table Membership.Members for juvenile members.
-- THESE SHOULD HAVE PRIORITY KEY 22 to 42.
/*These are Juvenile Members */
insert into Membership.Members (first_name, middle_name, last_name, date_of_birth) values ('Boolay', 'Mio', 'Lion', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Mia', 'Pinata', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Mon', 'Champ', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Cafe', 'Punaise', '2013-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Jessy', 'Coquerelle', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Alexandre', 'Le Grand', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Bon', 'The Builder', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Bro', 'Why', '2016-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Am', 'I', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('So', 'Tired', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('This', 'is', '2014-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Manually', 'Entered', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('And', 'I', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Am', 'Very', '2016-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Tired', 'I', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Should', 'Probably', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Go', 'To', '2017-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Sleep', 'But', '2013-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Got', 'To', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Finish', 'This', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Table', 'There you go', '2015-01-01')
/* ROFL, go to bed francis lol */
go
SELECT * FROM Membership.Members
;
go
-- execute file TeamProject/create_Database/create_procedures/createInsertJuvenileProcedure.sql first
-- populate table Membership.juveniles
exec Membership.sp_insert_juveniles @member_id = 21, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 22, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 23, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 24, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 25, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 26, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 27, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 28, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 29, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 30, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 31, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 32, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 33, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 34, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 35, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 36, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 37, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 38, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 39, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 40, @adult_id = 1;
go
select*from Membership.Juveniles
;
go