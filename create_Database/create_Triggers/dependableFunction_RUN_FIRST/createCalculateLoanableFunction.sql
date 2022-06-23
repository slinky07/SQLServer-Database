use AragonMunicipalLibrary
;

-- create a procedure that calculate: copy_amt - (on_loan + on_reserve) {> 0 .... in trigger}
create function [ItemCollection].calculateLoanable()
returns int
    begin
        declare @copy_Count int
        declare @loan_Count int
        declare @reserve int
        declare @total_count int

        set @copy_Count = (
            select count(c.copy_amt)
            from ItemCollection.Copies as c
                            )
        set @loan_Count = (
            select count(c.on_loan)
            from ItemCollection.Copies as c
                            )
        set @reserve = (
            select count(c.on_reserve)
            from ItemCollection.Copies as c
                            )
         set @total_count = @copy_Count - (@loan_Count + @reserve)

        return @total_count
    end
;
go