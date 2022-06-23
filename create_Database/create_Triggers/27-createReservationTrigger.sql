-- use AragonMunicipalLibrary
-- ;

-- reserve trigger when insert , update on)reserve amt is updated +1
CREATE TRIGGER [Borrows].update_reserve_amt_after_Reservation_change
    ON Borrows.Reservations
    AFTER UPDATE, INSERT, DELETE
AS
    BEGIN
        UPDATE c
        SET c.on_reserve = c.on_reserve + 1
            from ItemCollection.Copies c,
                Borrows.Reservations r,
                ItemCollection.Items i
            where r.isbn_ID = i.isbn_ID
            AND i.copy_ID = c.copy_ID
    END
;
go
