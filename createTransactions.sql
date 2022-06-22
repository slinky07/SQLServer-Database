use AragonMunicipalLibrary;

-- implement transaction logic for Borrows.loans that verify that ItemCollection.copies.on_loan is equal to 0
begin try
insert into Borrows.loans (isbn_ID, member_ID)
    values (2, 1);
end try
begin catch
    select error_number() as 'Error Number', error_message() as 'Error Message'
    end catch
;
go
-- TODO can we make this one below dynamic in the sens that every insert of loan will try a transaction?
--  is worth trying if we got time ...
begin try
    begin transaction;
        insert into Borrows.loans (isbn_ID, member_ID)
        values ('')
        insert into Borrows.loans (isbn_ID, member_ID)
        values (2, 1);
    commit transaction;
end try
begin catch
    select error_number() as 'Error Number', error_message() as 'Error Message'
    end catch
;
go
