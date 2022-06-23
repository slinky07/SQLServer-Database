/*
Create a view and save it as LoanableView that queries CopywideView (3-table join). Lists complete
information about each copy marked as loanable (loanable = 'Y').
 */
-- use AragonMunicipalLibrary
-- ;
-- go

create view Borrows.LoanableView as
select c.isbn_ID,
       c.Title,
       c.publisher,
       c.binding,
       c.translation,
       c.synopsis,
       c.on_loan,
       c.copy_amt

from ItemCollection.CopyWideView as c

WHERE c.loanable = 'Y'
;
go


SELECT * FROM Borrows.LoanableView
;
go