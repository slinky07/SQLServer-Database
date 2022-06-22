use AragonMunicipalLibrary;
go

select MAX(total_loans) as Max_Borrowings
  from (
      SELECT member_ID
      , COUNT(loan_ID) as total_loans
      FROM Borrows.Loans
      group
          by member_ID
           ) as t
   RETURN
