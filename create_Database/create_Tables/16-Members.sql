-- use AragonMunicipalLibrary
-- ;
-- go

CREATE TABLE Membership.Members
(
    member_ID       int      NOT NULL IDENTITY (1,1),
    first_name      char(25) NOT NULL,
    middle_name     char(25) NULL,
    last_name       char(25) NOT NULL,
    date_of_birth   date     NOT NULL,
    card_issue_date date     NOT NULL,

    PRIMARY KEY (member_ID)
)
;

go


select * from Membership.Members;
/*exec sp_columns Members

DELETE FROM Members.Members WHERE first_name is null or last_name is null ;

/* Delete all entries from database*/
    Delete from Members.Adults
    Delete from Members.Juveniles
    Delete from Members.Addresses
    Delete from Members.Members
    Delete from Members.Cities*/