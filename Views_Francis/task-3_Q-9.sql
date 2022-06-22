use AragonMunicipalLibrary;
;
go

-- create a view and store it as OnloanView that queries the loan, title and member tables.
-- Lists the :
--              - member,
--              - title,
--              - and loan
--
-- information of a copy that is currently on loan.
--
-- need to show the member's name, the book title's name, and the loan's checkout date and the due date
-- IMPORTANT: CURRENTLY on loans, meaning that the loan is not yet returned.

create view OnloanView as
select m.member_id                         as 'Member ID',
       m.first_name                        as 'Member First Name',
       m.middle_name                       as 'Member Middle Name',
       m.last_name                         as 'Member Last Name',
       t.title                             as 'Book Title',
       l.isbn_ID                           as 'ISBN ID',
       CONVERT(DATE, l.checkout_date, 101) as 'Checkout Date',
       CONVERT(DATE, l.due_date, 101)      as 'Due Date'
from Borrows.Loans as l,
     Membership.Members as m,
     ItemCollection.Titles as t,
     ItemCollection.Items as i
where l.member_id = m.member_id
  and l.isbn_ID = i.isbn_ID
  and i.title_id = t.title_id
  and l.return_status = 0
;

SELECT *
from OnloanView
;

/*
 select only the books with isbn of 80-902734-5-6
 */
SELECT *
from OnloanView
where OnloanView.[ISBN ID] = '80-902734-5-6'
;

/*
 select only the books loaned by jhon doe
 */
SELECT *
from OnloanView as olv
where olv.[Member First Name] = 'John'
 and olv.[Member Last Name] = 'Doe'
;
go

/*
    select only the books loaned by member_ID 4
 */
SELECT *
from OnloanView as olv
where olv.[Member ID] = 4
;
go
