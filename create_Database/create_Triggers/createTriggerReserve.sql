use AragonMunicipalLibrary
;
-- and only 1 trigger for copy_amt - (on_loan + on_reserve) > 0 then loannable ='Y'


CREATE TRIGGER [ItemCollection].trigger_is_loanable
    ON Borrows.Loans
    AFTER UPDATE , INSERT, DELETE
AS
    BEGIN
        declare @calculated_loan int
        set @calculated_loan = (select ItemCollection.calculateLoanable())
        UPDATE c
        SET c.loanable = 'Y'
            from ItemCollection.Copies c
        WHERE @calculated_loan > 0
    END
;
go
