use AragonMunicipalLibrary
;
go


create table Items.Items
(
    isbn_ID     char(13)         not null primary key,
    title_ID    int         not null,
    copy_ID     int         not null,
    binding     varchar(20) not null,
    translation varchar(20) null
)
;

go
exec sp_columns Items