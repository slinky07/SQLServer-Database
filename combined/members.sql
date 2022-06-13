use AragonMunicipalLibrary
;
go

CREATE TABLE Members.Members
(
    member_id       int      NOT NULL IDENTITY (1,1),
    first_name      char(25) NOT NULL,
    middle_name     char(25) NULL,
    last_name       char(25) NOT NULL,
    date_of_birth   date     NOT NULL,
    card_issue_date date     NOT NULL,

    PRIMARY KEY (member_id)
)
;

go