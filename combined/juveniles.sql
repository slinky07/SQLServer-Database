use AragonMunicipalLibrary
;
go

create table Members.Juveniles
(
    juvenile_ID int NOT NULL IDENTITY (1,1),
    member_ID   int NOT NULL,
    adult_ID    int NOT NULL,
    PRIMARY KEY (juvenile_id)
)
;

go