/*
   Planning to add is guardian or has minor field to know if adult is associated with minor. My AdultView broke since last night.
 */

use AragonMunicipalLibrary
;
go


create function Membership.check_if_adult_is_guardian(@adult_ID int)
    returns varchar(3)
as
begin
    declare @isGuardian bit;
    if (select count(j.adult_ID)
        from Membership.Juveniles j,
             Membership.Adults a
        where j.adult_ID = @adult_ID) >= 1
        return 'Yes'
        --             if @isGuardian is null
--                 return 'No';
    else
        return 'No';
    return '';
end
;
go

create view Membership.AdultWideView as

select distinct m.member_ID                                                          as 'Member ID',
                a.adult_ID                                                           as 'Adult ID',
                m.first_name + '' + m.middle_name + '' + m.last_name                 as 'Name',
                a.photograph                                                         as 'Photo',
                m.date_of_birth                                                      as 'Date of Birth',
                a.phone_number                                                       as 'Phone Number',
                ad.civic_number + ',' + ad.street + ',' + c.city + ',' + ad.province as 'Address',
                ad.unit_number                                                       as 'Unit Number',
                ad.postal_code                                                       as 'Postal Code',
                'No'                                                                 as 'Minor',

                Membership.check_if_adult_is_guardian(a.adult_ID)                    as 'Is Guardian'


from Membership.Members m,
     Membership.Adults a,
     Membership.Cities c,
     Membership.Juveniles j,
     Membership.Addresses ad

where m.member_ID = a.member_ID
  and a.address_ID = ad.address_ID
  and ad.city_ID = c.city_ID
;

-- declare @test int;
-- set @test = 131;
--  Membership.check_if_adult_is_guardian (@test);


-- drop view Membership.AdultwideView;
go




-- create view ChildwideView as
--
--     select m.member_ID                                          as 'Member ID',
--            a.adult_ID                                           as 'Adult ID',
--            m.first_name + '' + m.middle_name + '' + m.last_name as 'Minor name',
--            (select m.first_name + '' + m.middle_name + '' + m.last_name
--             from Membership.Adults a,
--                  Membership.Members m
--             where adult_ID = a.adult_ID)                        as 'Adult name',
--            (select Address from AdultwideView where)            as 'Adult address',
--            ad.unit_number                                       as 'Unit Number',
--            ad.postal_code
-- ;


select *
from Membership.Addresses;
select *
from Membership.Cities;
select *
from Membership.Adults;
select *
from Membership.Juveniles;


/*
 if(DATEDIFF(year, m.date_of_birth, GETDATE()) > 18)
  select 'No' as 'Is Minor',
 */










