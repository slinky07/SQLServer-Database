-- What percentage of the books was loaned out at least once last year?

-- use AragonMunicipalLibrary
-- ;
-- go
drop function Borrows.percentLoanedLastYear

create function Borrows.percentLoanedLastYear()
    returns decimal
    as
    begin
        declare @yearCount decimal;
        declare @totalCount decimal
        declare @result decimal;

        set @yearCount = (select count(distinct isbn_ID)
        from Borrows.Loans as l
        where
            l.checkout_date between DateAdd(yy, -1, GetDate()) and getdate())

        set @totalCount = (select count(distinct isbn_ID) from Borrows.Loans as l)

        if @totalCount = 0.00
            return 0;

        set @result = (@yearCount / @totalCount * 100)
        return @result;
--             return 0
--         return @totalCount;
--         return @yearCount;
    end

    select Borrows.percentLoanedLastYear() as 'percentage /100 of the books was loaned out at least once last year'
