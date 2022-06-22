use AragonMunicipalLibrary;
-- create a trigger on new insertion of a loan to update the on_loan in table Copies to subtract 1
-- as default of return_status is false, update trigger will be called on update of return_status to true

CREATE TRIGGER [Borrows].onLoanReturned
    ON Borrows.Loans
    AFTER UPDATE
AS
    if ( UPDATE(return_status) )
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
