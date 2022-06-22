use AragonMunicipalLibrary;

/*
 by FBH
 6. What is the average length of a loan?
 */

-- make a view calculating the average length of a loan from Borrow.Loans
create view LoanAverageLength_View as
SELECT AVG((DATEDIFF(BL.due_date, BL.checkout_date))) as 'Average length of a loan (in days)'
From Borrows.Loans as BL;

;
go

