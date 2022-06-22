-- use AragonMunicipalLibrary;

/*
 by FBH
 6. What is the average length of a loan?
 */

-- make a view calculating the average length of a loan from Borrow.Loans
create view LoanAverageLength_View as
select dateadd(day, datediff(day, BL.checkout_date, BL.due_date), 0) as 'Length'
from Borrows.Loans as BL

where BL.checkout_date is not null
;
go
