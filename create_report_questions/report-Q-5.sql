use AragonMunicipalLibrary
;


/*
    by FBH
    5. What percentage of all loans eventually becomes overdue?
 */
--TODO ask if this should be included in the running of database or will this become a view or something?
-- TODO: this is a view

create function Borrows.getOverduePercentage()
    returns decimal
    as
    begin
        declare @overdueCount int, @totalCount int, @overduePercentage decimal
        set @overdueCount = (select count(*) from Borrows.OverdueView)

        set @totalCount = (select count(*) from Borrows.Loans)
        return (@overdueCount * 100) / @totalCount
--         return @totalCount
    end
;
go


select Borrows.getOverduePercentage() as 'Overdue Percentage'

select * from ItemCollection.Copies

-- drop function Borrows.getOverduePercentage