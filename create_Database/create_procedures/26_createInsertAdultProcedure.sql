-- use AragonMunicipalLibrary;

create procedure Membership.sp_insert_adults (
    @member_id int,
    @address_id int,
    @email varchar(50),
    @phone_number varchar(12),
    @photograph image
    )
as
begin
    if not exists(select * from Membership.Juveniles where MEMBER_ID = @member_id)
    begin
        if not exists(select * from Membership.Adults where MEMBER_ID = @member_id)
        begin
            insert
            into Membership.Adults (
                                    MEMBER_ID,
                                    address_ID,
                                    email,
                                    phone_number,
                                    photograph)
            values (
                    @member_id,
                    @address_id,
                    @email,
                    @phone_number,
                    @photograph);
        end
        else
        begin
            print 'ERROR: member_id ' + CONVERT(varchar, @member_id) + ' already exists in Membership.Adults';
        end
    end
    else
    begin
        print 'ERROR: member_ID ' + CONVERT(varchar, @member_id) + ' is already a Foreign Key in the Membership.Juveniles table';
    end
end
;
go