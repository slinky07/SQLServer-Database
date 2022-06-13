use AragonMunicipalLibrary
;
go

create table Library.Copies
(
    copy_ID  int not null IDENTITY (1,1) PRIMARY KEY,
    copy_amt int not null,
    on_loan  int not null,
    loanable bit not null -- BOOLEAN
)
;


create table Library.Authors
(
    author_ID   int         not null IDENTITY (1,1) PRIMARY KEY,
    first_name  varchar(50) NOT NULL,
    middle_name varchar(50) NULL,
    last_name   varchar(50) NOT NULL,
)
;


create table Library.Genre
(
    genre_ID int         not null IDENTITY (1,1) primary key,
    genre    varchar(25) not null
)
;


create table Library.Publisher
(
    publisher_ID int         not null IDENTITY (1,1) primary key,
    publisher    varchar(50) not null
)
;



create table Library.AuthorComposite
(
    title_ID  int not null ,

    author_ID int not null
)
;



create table Library.GenreComposite
(
    title_ID    int         not null ,
    genre_ID    int         not null ,
)
;


create table Library.Titles
(
    title_ID     int           not null IDENTITY (1,1) primary key,
    title        varchar(100)  not null,
    synopsis     varchar(2000) null,
    author_ID    int           not null,
    genre_ID     int           not null,
    publisher_ID int           not null
)
;


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