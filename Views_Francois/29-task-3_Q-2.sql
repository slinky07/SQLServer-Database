-- use AragonMunicipalLibrary;
-- go

/*
Write and execute a query on the title, item, and copy tables that returns the isbn, copy_no, on_loan, title, translation, and cover, and values for rows in the copy table with an ISBN of 1 (one), 500 (five hundred), or 1000 (thousand). Order the result by ISBN column.
 */

create view Question_Two_View as
select l.isbn_ID as 'ISBN Number',
       c.copy_ID as 'Copy Number',
       c.on_loan as 'On Loan',
       t.title as 'Title',
       i.translation as 'translation'

       /*cover to add to database*/
--        i.cover as 'Cover'

from ItemCollection.Titles as t,
     ItemCollection.Copies as c,
     ItemCollection.Items as i,
     Borrows.Loans as l

where l.isbn_ID = i.isbn_ID
  and c.copy_ID = i.copy_ID
  and t.title_ID = i.title_ID
  and (l.isbn_ID = 1 or l.isbn_ID = 500 or l.isbn_ID = 1000)
;
go
/*
returns view ordered by ISBN column
 */

select * from Question_Two_View
order by [ISBN Number];
go
