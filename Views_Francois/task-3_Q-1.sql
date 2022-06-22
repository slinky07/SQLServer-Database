-- use AragonMunicipalLibrary2;
-- go

/*
 Create a mailing list of Library members that includes the members’ full names and complete address information.
 */

create view MailingList_View as
select concat_ws(' ', first_name, middle_name, last_name) as 'Full Name',
       ad.address_ID, city_ID, unit_number, civic_number, street, province, postal_code as 'Mailing Address'

from Membership.Members as m,
     Membership.Adults as a,
     Membership.Addresses as ad

where a.member_id = m.member_id
  and a.address_id = ad.address_id


/*
 Returns the mailing list of all Library members.
 */

select *
from MailingList_View as ml
;
go