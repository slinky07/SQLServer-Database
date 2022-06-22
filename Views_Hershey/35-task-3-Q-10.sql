/* 10. Create a view and save it as OverdueView that queries OnloanView (3-table join.) Lists the member,
title, and loan information of a copy on loan that is overdue (due_date < current date). */

use AragonMunicipalLibrary
;
go

create view Borrows.OverdueView as
    select ol.member_id,
           ol.first_name,
           ol.last_name,
           ol.title,
           ol.isbn_ID,
           ol.checkout_date,
           ol.due_date
from Borrows.OnloanView as ol
where (due_date < getdate())
;
go

-- drop view Borrows.OverdueView;

select * from Borrows.OverdueView
;
go