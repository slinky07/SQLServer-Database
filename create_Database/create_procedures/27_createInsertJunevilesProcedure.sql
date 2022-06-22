use AragonMunicipalLibrary;
-- TODO : develop this procedure more to check the validity of the juvenile's age being actually under 18! Or maybe make it into check constraints?
create procedure Membership.sp_insert_juveniles (
    @member_id int,
    @adult_id int
    )
as
begin
    if not exists(select * from Membership.Adults where MEMBER_ID = @member_id)
    begin
        if not exists(select * from Membership.Juveniles where MEMBER_ID = @member_id)
        begin
            insert into Membership.Juveniles (MEMBER_ID, ADULT_ID) values (@member_id, @adult_id);
        end
        else
        begin
            print 'ERROR: Juvenile ' + CONVERT(varchar, @member_id) + ' already exists';
        end
    end
    else
    begin
        print 'ERROR: member_ID ' + CONVERT(varchar, @member_id) + ' is already a Foreign Key in the Membership.Adults table';
    end
end
;
go
