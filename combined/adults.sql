use AragonMunicipalLibrary
;
go

create table Members.Adults
(
    adult_ID     int         NOT NULL IDENTITY (1,1),
    member_ID    int         NOT NULL,
    address_ID   int         NOT NULL,
    email        varchar(50) NOT NULL,
    phone_number varchar(10) NOT NULL,
    photograph   IMAGE       NOT NULL,
    PRIMARY KEY (adult_id)
)
;
go

-- alter table Members.Adults phone number. lenght to be 20. some countries have more than 10. and you  have symbol - that is added in phone number. it is a string so doesnt matter.
alter table Members.Adults alter column phone_number varchar(20)
;
go