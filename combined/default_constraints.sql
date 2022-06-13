use AragonMunicipalLibrary
;
go

ALTER TABLE Borrows.Loans
ADD CONSTRAINT df_checkout_date
DEFAULT getdate() FOR checkout_date
;
go

ALTER TABLE Borrows.Loans
ADD CONSTRAINT df_due_date
DEFAULT dateadd(day, 14, getdate()) FOR due_date
;
go

ALTER TABLE Borrows.Loans
ADD CONSTRAINT df_return_status
DEFAULT 0 FOR return_status
;
go

ALTER TABLE Borrows.Reservations
ADD CONSTRAINT df_log_date
DEFAULT CONVERT(date, GETDATE()) FOR log_date
;
go

ALTER TABLE Members.Addresses
ADD CONSTRAINT df_province
DEFAULT 'QC' FOR province
;
go

alter table Items.Items
    ADD CONSTRAINT df_items_translation
    DEFAULT 'FRENCH' for translation
;
go