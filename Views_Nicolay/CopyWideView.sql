/*Create a view and save it as CopywideView that queries the copy,
  title and item tables. Lists complete information about each copy.

  */
use master;
use AragonMunicipalLibrary
;
-- TODO - display every genre and every author for each book. This is a bit of a pain. Many to many relationship for those.
create view CopywideView as
select i.isbn_ID     as ISBN,
       t.title       as 'Title',
       p.publisher   as 'Publisher',
       i.binding     as 'Binding',
       i.translation as 'Language',
       t.synopsis    as 'Description',
       c.on_loan     as 'Copies on Loan',
       c.copy_amt    as 'Copies'

from ItemCollection.Copies as c,
     ItemCollection.Publisher as p,
     ItemCollection.Titles as t,
     ItemCollection.Items as i

where i.title_ID = t.title_ID
            and t.publisher_ID = p.publisher_ID
            and i.title_ID = t.title_ID
            and i.copy_ID = c.copy_ID
;

select*from CopywideView;
