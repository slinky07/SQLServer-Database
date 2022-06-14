/*
   Planning to add is guardian or has minor field to know if adult is associated with minor
 */
 use AragonMunicipalLibrary;
create view AdultwideView as

select m.member_ID                                                          as 'Member ID',
             m.first_name + m.middle_name + m.last_name                           as 'Name',
             a.photograph                                                         as 'Photo',
             a.phone_number                                                       as 'Phone Number',
             ad.civic_number + ',' + ad.street + ',' + c.city + ',' + ad.province as 'Address',
             ad.unit_number                                                       as 'Unit Number',
             ad.postal_code                                                       as 'Postal Code'

      from Members.Members m,
           Members.Adults a,
           Members.Cities c,
           Members.Addresses ad

      where m.member_ID = a.member_ID
        and a.address_ID = ad.address_ID
        and ad.city_ID = c.city_ID
;

select * from AdultwideView;
select * from Members.Addresses;
select * from Members.Cities;
select * from Members.Adults;
select * from Members.Juveniles;













