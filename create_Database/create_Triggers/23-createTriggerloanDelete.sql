-- Use AragonMunicipalLibrary;
-- create a trigger on DELETE of a loan record to update the on_loan in table Copies to subtract 1
-- mistake on wrong book insert?
CREATE TRIGGER [Borrows].onLoanDelete
    ON Borrows.Loans
    AFTER DELETE
AS
    BEGIN
        UPDATE c
        SET c.on_loan = c.on_loan - 1
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
        UPDATE c
        SET c.loanable = 'Y'
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE c.copy_amt > c.on_loan
        AND l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
        UPDATE c
        SET c.loanable = 'N'
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE c.copy_amt = c.on_loan
        AND l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
    END;
go