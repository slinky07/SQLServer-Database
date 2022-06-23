/* Create a view and save it as OnshelfView that queries CopywideView (3-table join). Lists complete
information about each copy that is not currently on loan (on_loan ='N'). */

-- use AragonMunicipalLibrary
-- ;
-- go


create view Borrows.OnShelfView as
select c.isbn_ID,
       c.Title,
       c.publisher,
       c.binding,
       c.translation,
       c.synopsis,
       c.on_loan,
       c.copy_amt

from ItemCollection.CopyWideView as c

WHERE c.loanable = 'N'
;
go

SELECT * FROM Borrows.OnShelfView
;
go