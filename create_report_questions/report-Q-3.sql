use AragonMunicipalLibrary
;
go

-- select MAX(total_loans) as Max_Borrowings
--   from (
--       SELECT member_ID
--       , COUNT(loan_ID) as total_loans
--       FROM Borrows.Loans
--       group
--           by member_ID
--            ) as t

SELECT member_id, COUNT(member_id)
FROM Borrows.Loans  GROUP BY member_id
HAVING COUNT (member_id)=(
SELECT MAX(mycount)
FROM (
SELECT member_id, COUNT(member_id) mycount
FROM Borrows.Loans
GROUP BY member_id) as mim)
;
go

