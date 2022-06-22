 use AragonMunicipalLibrary

/*
 create a trigger that updates ItemCollection.Copies.loanable to true if the item is loanable and false otherwise
 where loanable is defined as:
    - Loanable if copies_amt > on_loan
    - Not Loanable if copies_amt = on_loan
    - if copies_amt < on_loan, then there is an error.
 */

/*CREATE TRIGGER [ItemCollection].update_loanable_copies_trigger
    ON ItemCollection.Copies
    AFTER UPDATE
AS
    if ( UPDATE(loanable) )
    BEGIN
        UPDATE c
        SET c.on_loan = c.on_loan - 1
            from ItemCollection.Copies c,
                 ItemCollection.Items i,
                 Borrows.Loans l
        WHERE l.isbn_ID = i.isbn_ID
        AND i.copy_id = c.copy_id
    END;
go*/