-- use AragonMunicipalLibrary;

/*
Create a function that checks if the adult_ID of the adult matches the adult_ID
of a juvenile
*/
-- declare @guardians A , table(adult_ID int, juvenile_ID int)
-- set @guardians = (a.adult_ID, j.adult_ID)
--
--
--     from Members.Adult a, Members.Juvenile j
--     where a.adult_ID = j.adult_ID
--
-- select @guardians from Members.Adults where adult_ID = @adult_ID;
go

create function Membership.check_if_adult_is_guardian(@adult_ID int)
    returns varchar(3)
as
    begin
          declare @isGuardian bit;
if (select count ( j.adult_ID)
    from    Membership.Juveniles j,
            Membership.Adults a
        where j.adult_ID = @adult_ID) >=1 return 'Yes'
--             if @isGuardian is null
--                 return 'No';
            else
                return 'No';
                return '';
        end
;
go


-- drop function Membership.check_if_adult_is_guardian;
-- EXEC sp_help check_if_adult_is_guardian;




-- ================================== some tests of nicolay function by francis =======================================
-- using your function

/*
-- create a view that test the function above
create view Members.view_is_guardian as
    select a.adult_ID,
        Members.check_if_adult_is_guardian (a.adult_ID) as is_guardian
    from Members.Adults as a
;
go
-- test view above
drop view Members.view_is_guardian;
select * from Members.view_is_guardian;

-- same as above but without a function
-- this saves a lot of line of code
create view Members.view_is_guardian_2 as
    select a.adult_ID
     from Members.Adults as a
        where a.adult_ID in (
            select j.adult_ID
            from    Members.Juveniles j
        );
go
-- check if adult_ID 24 is present in the Juvenile table
select * from Members.view_is_guardian_2 where adult_ID = 24;
select * from Members.view_is_guardian_2;
*/