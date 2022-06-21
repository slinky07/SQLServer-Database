use master;
use AragonMunicipalLibrary2;

/*
Create a view and save it as ChildwideView that queries the member,
adult, and juvenile tables. Lists the name & address for the juveniles.
*/

-- TODO - this view seems to be broken. red lines everywhere. check my code below for my version. but junvenile data are not correct.
--  you dont need to show adult name of the address owner. It is asking for name and address of the child. Would only need to not print null records for names.
-- also some address seem to be null from this view
create view ChildwideView as
select m.member_ID                                                                                                   as 'Member ID',
       a.adult_ID                                                                                                    as 'Adult ID',
       m.first_name + '' + m.middle_name + '' + m.last_name                                                          as 'Minor name',
       (select m.first_name + '' + m.middle_name + '' + m.last_name
        from Membership.Adults a,
                Membership.Members m
        where adult_ID = a.adult_ID)                                                                                 as 'Adult name',
       (select 'Address' from Membership.Adults where adult_ID = a.adult_ID)                                            as 'Adult address',
       ad.unit_number                                                                                                as 'Unit Number',
       ad.postal_code
;


/*    create view ChildwideView as
select m.member_ID                                                                                                   as 'Member ID',
       a.adult_ID                                                                                                    as 'Adult ID',
       m.first_name + '' + m.middle_name + '' + m.last_name                                                          as 'Minor name',
       ad.unit_number + '' + ad.postal_code + '' + ad.street + '' + c.city + '' + ad.province                          as 'Address'
        from Membership.Adults a,
             Membership.Members m,
             Membership.Addresses ad,
             Membership.Cities c,
             Membership.Juveniles j
        where m.member_ID = j.adult_ID AND
                j.adult_ID = a.adult_ID AND
                a.address_ID = ad.address_ID AND
                ad.city_ID = c.city_ID
;
go
*/

SELECT * FROM ChildwideView;


