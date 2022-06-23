use AragonMunicipalLibrary2
;
go

create function Borrows.percentLoanedLastYear(@isbn char(13), @member_ID int)
    returns varchar(3)
    as
    begin

        declare @onReserve int;
        declare @copyID int;
        declare @reservesCount int;

        set @copyID = (
            select ([Copy Number])
            from Question_Two_View
        )

        set @onReserve = (
            select (on_reserve)
            from ItemCollection.Copies
            where copy_ID = @copyID
        )

        set @reservesCount = (select top @onReserve count(reserve_ID)
        from Borrows.Reservations as r
        where isbn_ID = @isbn and member_ID = @member_ID
        order by r.reserve_ID)
        ;

        if @reservesCount = 0
            return 'loan ineligible'
        return 'loan eligible'
    end