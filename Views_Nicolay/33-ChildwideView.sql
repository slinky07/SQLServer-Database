-- use master;
-- use AragonMunicipalLibrary;

/*
Create a view and save it as ChildwideView that queries the member,
adult, and juvenile tables. Lists the name & address for the juveniles.
*/

-- TODO - this view seems to be broken. red lines everywhere. check my code below for my version. but junvenile data are not correct.
--  you dont need to show adult name of the address owner. It is asking for name and address of the child. Would only need to not print null records for names.
-- also some address seem to be null from this view

-- create view Membership.ChildwideView as
-- select m.member_ID                                                                                                   as 'Member ID',
--        a.adult_ID                                                                                                    as 'Adult ID',
--        m.first_name + '' + m.middle_name + '' + m.last_name                                                          as 'Minor name',
--        (select m.first_name + '' + m.middle_name + '' + m.last_name
--         from Membership.Adults a,
--                 Membership.Members m
--         where adult_ID = a.adult_ID)                                                                                 as 'Adult name',
--        (select 'Address' from Membership.Adults where adult_ID = a.adult_ID)                                            as 'Adult address',
--        ad.unit_number                                                                                                as 'Unit Number',
--        ad.postal_code

/*
 /*Create view Membership.ChildWideView that queries the member, adult, and juvenile tables.
  Lists the name & address for the juveniles. For the address use the one linked to the adult_ID of the juvenile */
 */
create view Membership.ChildWideView as
select distinct m.member_ID                                                          as 'Member ID',
                a.adult_ID                                                           as 'Adult ID',
                j.adult_ID                                                           as 'Juvenile ID',
                m.first_name + '' + m.middle_name + '' + m.last_name                 as 'Name',
                a.photograph                                                         as 'Photo',
                m.date_of_birth                                                      as 'Date of Birth',
                a.phone_number                                                       as 'Phone Number',
                ad.civic_number + ',' + ad.street + ',' + c.city + ',' + ad.province as 'Address',
                ad.unit_number                                                       as 'Unit Number',
                ad.postal_code                                                       as 'Postal Code'

from Membership.Members m,
     Membership.Adults a,
     Membership.Cities c,
     Membership.Juveniles j,
     Membership.Addresses ad

where m.member_ID = j.member_ID
          AND j.adult_ID = a.adult_ID
          AND a.address_ID = ad.address_ID
          AND ad.city_ID = c.city_ID
;
go



SELECT * FROM Membership.ChildWideView;
go
--
-- drop view Membership.ChildWideView;


