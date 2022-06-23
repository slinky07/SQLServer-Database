use AragonMunicipalLibrary
;
go

-- create a trigger to update Borrows.Loans.returned_date when Borrows.Loans.return_status is updated
-- TODO : idea, create a stored procedure to allow a librarian to manually correct the return date from a given date.
--  (manual correction of a book that was left on a shelf)
CREATE TRIGGER update_borrow_returned_date
ON Borrows.Loans
AFTER UPDATE
AS
BEGIN
    UPDATE l
    set l.return_date = GETDATE()
    from Borrows.Loans l
    where l.return_status = 1;
END
;
go
