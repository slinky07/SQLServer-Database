
use master;
use AragonMunicipalLibrary;

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

create function Members.check_if_adult_is_guardian(@adult_ID int)
    returns varchar(3)
as
    begin
          declare @isGuardian bit;
if (select count ( j.adult_ID)
    from    Members.Juveniles j,
            Members.Adults a
        where j.adult_ID = @adult_ID) >=1 return 'Yes'
--             if @isGuardian is null
--                 return 'No';
            else
                return 'No';
                return '';

        end
    go
drop function Members.check_if_adult_is_guardian;
EXEC sp_help check_if_adult_is_guardian;









