-- use AragonMunicipalLibrary
-- ;
/*
author: Francis Sauve
 what are the library's peak hours for loans?
 */

-- TODO - this is a very simple query and it is not using a database object. i need to convert it as a stored procedure or something

 -- get the library's peak hours for Borrows.Loans

SELECT
DATEPART(HOUR, Borrows.Loans.checkout_date) AS Hour,
COUNT(Borrows.Loans.checkout_date) AS Count
FROM Borrows.Loans
GROUP BY DATEPART(HOUR, Borrows.Loans.checkout_date)
;
go
-- create a procedure to hold the results of the query

create procedure Borrows.sp_getPeakHours as
begin
    SELECT
        DATEPART(HOUR, Borrows.Loans.checkout_date) AS 'Peak Hour',
        COUNT(Borrows.Loans.checkout_date)          AS 'Peak Hour Count'
    FROM Borrows.Loans
    GROUP BY DATEPART(HOUR, Borrows.Loans.checkout_date)
    ORDER BY [Peak Hour]
end
;
go
exec Borrows.sp_getPeakHours;
