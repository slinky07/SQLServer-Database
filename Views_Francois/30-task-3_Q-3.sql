use AragonMunicipalLibrary;
go

/*
 Write and execute a query to retrieve the member’s full name and member_no from the member table and the isbn and log_date values from the reservation table for members 250, 341, 1675. Order the results by member_no. You should show information for these members, even if they have no books or reserve.
 */

create view Question_Three_View as
select concat_ws('', m.first_name, middle_name, m.last_name) as 'Full Name',
        m.member_id as 'Member ID',
        r.isbn_ID as 'ISBN',
        r.log_date as 'Date'

from Membership.Members as m,
    ItemCollection.Titles as t,
    ItemCollection.Items as i,
    Borrows.Reservations as r

where r.isbn_ID = i.isbn_ID
  and r.member_ID = m.member_ID
  and (m.member_id = 250 or m.member_id = 341 or m.member_id = 1675)
;
go

select * from Question_Three_View
order by [Member ID];
go