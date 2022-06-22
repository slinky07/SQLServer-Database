use AragonMunicipalLibrary
;
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
        ORDER BY DATEPART(HOUR, Borrows.Loans.checkout_date)
;
go
select * from Borrows.Loans;