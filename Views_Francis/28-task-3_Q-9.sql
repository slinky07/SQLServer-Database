use AragonMunicipalLibrary;
-- ;
-- go

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

create view Borrows.OnLoanView as
select m.member_id                         as 'member_id',
       m.first_name                        as 'first_name',
       m.middle_name                       as 'middle_name',
       m.last_name                         as 'last_name',
       t.title                             as 'title',
       l.isbn_ID                           as 'isbn_ID',
       CONVERT(DATE, l.checkout_date, 101) as 'checkout_date',
       CONVERT(DATE, l.due_date, 101)      as 'due_date'
from Borrows.Loans as l,
     Membership.Members as m,
     ItemCollection.Titles as t,
     ItemCollection.Items as i
where l.member_id = m.member_id
  and l.isbn_ID = i.isbn_ID
  and i.title_id = t.title_id
  and l.return_status = 0
;
go

SELECT *
from Borrows.OnloanView
;
go

/*
 select only the books with isbn of 80-902734-5-6
 */
SELECT *
from Borrows.OnloanView
where Borrows.OnloanView.isbn_ID = '80-902734-5-6'
;
go

/*
 select only the books loaned by jhon doe
 */
SELECT *
from Borrows.OnloanView as olv
where olv.first_name = 'John'
 and olv.last_name = 'Doe'
;
go

/*
    select only the books loaned by member_ID 4
 */
SELECT *
from Borrows.OnloanView as olv
where olv.member_id = 4
;
go
