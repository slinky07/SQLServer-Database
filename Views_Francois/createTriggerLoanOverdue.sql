-- use AragonMunicipalLibrary;

/*
    by FBH
    5. What percentage of all loans eventually becomes overdue?
 */


CREATE TRIGGER [Borrows].onOverdueUpdate
    ON Borrows.Loans
    AFTER UPDATE
AS
    BEGIN
        UPDATE Loans
        SET Loans.due_date = (SELECT COUNT(*) * 100 / (SELECT COUNT(*)
        FROM Borrows.Loans as BL
        WHERE Borrows.Loans.loan_ID = loan_ID AND BL.due_date < GETDATE()))
    END;
go
