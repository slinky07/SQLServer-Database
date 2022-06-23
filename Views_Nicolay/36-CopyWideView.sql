/*Create a view and save it as CopywideView that queries the copy,
  title and item tables. Lists complete information about each copy.

  */


-- use master;
-- use AragonMunicipalLibrary
-- ;
-- go

-- TODO - display every genre and every author for each book. This is a bit of a pain. Many to many relationship for those.
create view ItemCollection.CopyWideView as
select i.isbn_ID     as 'isbn_ID',
       t.title       as 'title',
       p.publisher   as 'publisher',
       i.binding     as 'binding',
       i.translation as 'translation',
       t.synopsis    as 'synopsis',
       c.on_loan     as 'on_loan',
       c.copy_amt    as 'copy_amt',
       c.loanable    as 'loanable' -- Hershey: added

from ItemCollection.Copies as c,
     ItemCollection.Publishers as p,
     ItemCollection.Titles as t,
     ItemCollection.Items as i

where i.title_ID = t.title_ID
            and t.publisher_ID = p.publisher_ID
            and i.title_ID = t.title_ID
            and i.copy_ID = c.copy_ID
;
go
select*from ItemCollection.CopyWideView;

