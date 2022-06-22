use AragonMunicipalLibrary;

/*
 by FBH
 6. What is the average length of a loan?
 */


drop view if exists LoanAverageLength_View;

-- make a view calculating the average length of a loan from Borrow.Loans
create view LoanAverageLength_View as
select *

from (SELECT AVG((DATEDIFF(day, BL.checkout_date, BL.due_date))) as 'Avg Length of Loan (Days)'
      From Borrows.Loans as BL) as LoanAverageLength_View;

;
go

select * from LoanAverageLength_View;