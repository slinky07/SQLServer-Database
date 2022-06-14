/*
   Planning to add is guardian or has minor field to know if adult is associated with minor
 */
use AragonMunicipalLibrary;
create view AdultwideView as

select m.member_ID                                                          as 'Member ID',
       a.adult_ID                                                           as 'Adult ID',
       m.first_name + '' + m.middle_name + '' + m.last_name                 as 'Name',
       a.photograph                                                         as 'Photo',
       m.date_of_birth                                                      as 'Date of Birth',
       a.phone_number                                                       as 'Phone Number',
       ad.civic_number + ',' + ad.street + ',' + c.city + ',' + ad.province as 'Address',
       ad.unit_number                                                       as 'Unit Number',
       ad.postal_code                                                       as 'Postal Code',
       'No'                                                                 as 'Minor',

       Members.check_if_adult_is_guardian(a.adult_ID)             as 'Is Guardian'


from Members.Members m,
     Members.Adults a,
     Members.Cities c,
     Members.Juveniles j,
     Members.Addresses ad

where m.member_ID = a.member_ID
  and a.address_ID = ad.address_ID
  and ad.city_ID = c.city_ID;
Declare @test int;
set @test = 131;
 Members.check_if_adult_is_guardian(@test);

select*
from AdultwideView;
drop view AdultwideView;
go
create view ChildwideView as

select m.member_ID                                          as 'Member ID',
       a.adult_ID                                           as 'Adult ID',
       m.first_name + '' + m.middle_name + '' + m.last_name as 'Minor name',
       (select m.first_name + '' + m.middle_name + '' + m.last_name
        from Members.Adults
        where adult_ID = a.adult_ID)                        as 'Adult name',
       (select Address from AdultwideView where)            as 'Adult address',
       ad.unit_number                                       as 'Unit Number',
       ad.postal_code
;


select *
from Members.Addresses;
select *
from Members.Cities;
select *
from Members.Adults;
select *
from Members.Juveniles;


/*
 if(DATEDIFF(year, m.date_of_birth, GETDATE()) > 18)
  select 'No' as 'Is Minor',
 */










