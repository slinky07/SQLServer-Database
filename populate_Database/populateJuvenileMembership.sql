use AragonMunicipalLibrary;
-- populate table Membership.Membership (Juveniles)
insert into Membership.Members (first_name, middle_name, last_name, date_of_birth) values ('Boolay', 'Mio', 'Lion', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Mia', 'Pinata', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Gigi', 'Champ', '2012-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('John', 'Punaise', '2013-01-01')
insert into Membership.Members (first_name, last_name, date_of_birth) values ('Jessy', 'Coquerelle', '2012-01-01')

SELECT * FROM Membership.Members
;

exec Membership.sp_insert_juveniles @member_id = 6, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 7, @adult_id = 1;
exec Membership.sp_insert_juveniles @member_id = 8, @adult_id = 2;
exec Membership.sp_insert_juveniles @member_id = 9, @adult_id = 2;
exec Membership.sp_insert_juveniles @member_id = 10, @adult_id = 3;

select*from Membership.Juveniles
;