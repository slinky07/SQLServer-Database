-- use AragonMunicipalLibrary;

/*
 by FBH
 6. What is the average length of a loan?
 */

CREATE TRIGGER [Borrows].onAverageLengthOfLoan
    ON Borrows.Loans
    AFTER UPDATE
AS

    BEGIN
        DECLARE @averageLengthOfLoan AS INT
        SET @averageLengthOfLoan = (SELECT AVG(DATEDIFF(day, checkout_date, due_date))
        FROM Borrows.Loans)
    END;
go

