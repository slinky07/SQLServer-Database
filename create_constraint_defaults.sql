use AragonMunicipalLibrary
;
go

alter table Library.Items
    ADD CONSTRAINT df_items_translation
    DEFAULT 'FRENCH' for translation
;

alter table Library.Copies
    ADD CONSTRAINT df_copies_loanable
    DEFAULT 0 for loanable
;
go

