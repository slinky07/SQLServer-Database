-- use AragonMunicipalLibrary;

-- create a trigger on new insertion of a loan to update the on_loan in table Copies tp add 1
CREATE TRIGGER [Borrows].onLoanInsert
    ON Borrows.Loans
    AFTER INSERT
AS
    BEGIN
        UPDATE c
        SET c.on_loan =c.on_loan + 1
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
    END;
go

/*
-- create a trigger on UPDATE of a loan to update the on_loan in table Copies to subtract 1
-- doeesnt make sens as a loan being se to returned will not be updated furthermore
CREATE TRIGGER [Borrows].onLoanUpdate
    ON Borrows.Loans
    AFTER UPDATE
AS
    BEGIN
        UPDATE ItemCollection.Copies
        SET Copies.on_loan = Copies.on_loan + 1
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
    END;
go
*/
