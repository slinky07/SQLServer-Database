use AragonMunicipalLibrary;
;
go
-- TODO : photograph should not be of type Imagem that is deprecated and we would get points taken off from tje assignment.
create table Membership.Adults
(
    adult_ID     int         NOT NULL IDENTITY (1,1),
    member_ID    int         NOT NULL,
    address_ID   int         NOT NULL,
    email        varchar(50) NOT NULL,
    phone_number varchar(12) NOT NULL,
    photograph   IMAGE       NOT NULL,
    PRIMARY KEY (adult_id)
)
;
go

/*Changed photograph data type to VarBinary */
ALTER TABLE Membership.Adults ALTER COLUMN photograph VARBINARY(MAX)
;
/*TODO: Reflect changes in table instead of alter command */
go
/*drop table Members.Adults;
-- alter table Members.Adults phone number. lenght to be 20. some countries have more than 10. and you  have symbol - that is added in phone number. it is a string so doesnt matter.
alter table Members.Adults alter column phone_number varchar(12)
;
go*/