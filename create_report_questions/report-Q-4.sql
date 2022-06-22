-- What percentage of the books was loaned out at least once last year?

use AragonMunicipalLibrary
;
go

create function percentLoanedLastYear()
    returns int
    as
    begin
        declare @yearCount int;
        declare @totalCount int;

        set @yearCount = (select count(distinct isbn_ID)
        from Borrows.Loans as l
        where
            l.checkout_date between DateAdd(yy, -1, GetDate()) and getdate())

        set @totalCount = (select count(distinct isbn_ID) from Borrows.Loans as l)

        if @totalCount = 0
            select 0;
        else
            select @yearCount / @totalCount;
    end
