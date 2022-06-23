use AragonMunicipalLibrary
;
go

-- ALTER TABLE Borrows.Loans
-- ADD CHECK (checkout_date = getdate())
-- ;
-- go

-- ALTER TABLE Borrows.Loans
-- ADD CHECK (due_date > CONVERT(DATE, GETDATE()))
-- ;
-- go

ALTER TABLE Borrows.Reservations
ADD CHECK (log_date = CONVERT(DATE, GETDATE()))
;
go

-- alter table Borrows.Loans
-- drop constraint CK__Loans__due_date__534D60F1

-- CK__Loans__due_date__534D60F1