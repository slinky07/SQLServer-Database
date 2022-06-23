use AragonMunicipalLibrary
;

-- reserve trigger when insert , update on)reserve amt is updated +1
CREATE TRIGGER [Borrows].update_reserve_amt_after_Reservation_change
    ON Borrows.Loans
    AFTER UPDATE, INSERT, DELETE
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
