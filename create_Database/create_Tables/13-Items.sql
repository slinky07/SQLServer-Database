-- use AragonMunicipalLibrary
-- ;
-- go


create table ItemCollection.Items
(
    isbn_ID     char(13)         not null primary key,
    title_ID    int         not null,
    copy_ID     int         not null,
    binding     varchar(20) not null,
    translation varchar(20) null,
    cover       IMAGE       null
)
;
go
-- has to be null since table is not empty
/*alter table Items.Items
add cover IMAGE null
;
go
*/
-- exec sp_columns Items