-- What percentage of the books was loaned out at least once last year?

use AragonMunicipalLibrary
;
go

create function percentLoanedLastYear()
    returns int
    as
    begin
        declare @ret int;
        select @ret = count(distinct isbn_ID)
        from Borrows.Loans as l
        where
            l.checkout_date between DateAdd(yy, -1, GetDate()) and getdate()
        return @ret;
    end
