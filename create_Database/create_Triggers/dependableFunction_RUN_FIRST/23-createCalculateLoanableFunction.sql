-- use AragonMunicipalLibrary
-- ;
/*
 create a procedure that calculate: copy_amt - (on_loan + on_reserve) {> 0 .... in trigger}

 this doesnt actually work since a trigger can include multiple procedures.
 multiple inserts into the same table can cause the trigger to include multiple rows.
 so then this subquery will throw more than 1 value.
 for this to work, we would either need a stored procedure, or need to change
 the table to include ISBN_ID in copy table.
 */
create function [ItemCollection].calculateLoanable(@copy_amt int,
                                                   @on_loan int,
                                                   @on_reserve int)
    returns int
begin
    declare @total_count int
    set @total_count = @copy_amt - (@on_loan + @on_reserve)
    return @total_count
end
;

go