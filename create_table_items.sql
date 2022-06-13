use AragonMunicipalLibrary
;
go


create table Library.Items
(
    isbn     int         not null IDENTITY (1,1) primary key,
    title_ID int         not null,
    copy_ID  int         not null,
    binding  varchar(20) not null,
    translation varchar(20) null ,
)
;
go