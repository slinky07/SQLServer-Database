use master;
use AragonMunicipalLibrary;

/*
Create a view and save it as ChildwideView that queries the member,
adult, and juvenile tables. Lists the name & address for the juveniles.
*/
create view ChildwideView as

select m.member_ID                                                                                                   as 'Member ID',
       a.adult_ID                                                                                                    as 'Adult ID',
       m.first_name + '' + m.middle_name + '' + m.last_name                                                          as 'Minor name',
       (select m.first_name + '' + m.middle_name + '' + m.last_name
        from Members.Adults
        where adult_ID = a.adult_ID)                                                                                 as 'Adult name',
       (select 'Address' from Members.Adults where adult_ID = a.adult_ID)                                            as 'Adult address',
       ad.unit_number                                                                                                as 'Unit Number',
       ad.postal_code
;



