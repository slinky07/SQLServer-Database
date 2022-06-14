/*Create a view and save it as CopywideView that queries the copy,
  title and item tables. Lists complete information about each copy.

  */
use master;
use AragonMunicipalLibrary
;

create view CopywideView as
select i.isbn_ID     as ISBN,
       t.title       as 'Title',
       p.publisher   as 'Publisher',
       i.binding     as 'Binding',
       i.translation as 'Language',
       t.synopsis    as 'Description',
       c.on_loan     as 'Copies on Loan',
       c.copy_amt    as 'Copies'

from Items.Copies as c,
     Items.Publisher as p,
     Items.Titles as t,
     Items.Items as i

where i.title_ID = t.title_ID
            and t.publisher_ID = p.publisher_ID
            and i.title_ID = t.title_ID
            and i.copy_ID = c.copy_ID
;

select*from CopywideView;


