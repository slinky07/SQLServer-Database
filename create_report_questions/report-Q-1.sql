/*Count how many loans did the library do last year?*/
--Should work now, some return zero because of the way the data was populated



/*What percentage of the membership borrowed at least one book?*/
;
/*
 This view gives a percentage of the membership who borrowed at least one book as well as
 the total amound of valid members (it calculates based on members who's membership is valid.
 */


create function Borrows.get_loan_count() returns int as
begin
    declare @loan_count int;
    set @loan_count = (select count(*) from Borrows.Loans);
    return @loan_count;
end;
-- drop function get_loan_count;
/*Finds the number of members with valid memberships */
--TODO: We need to have all the members that populate have a valid card_issue_date
create function Membership.get_valid_member_count()
    returns int as
begin
    declare @count int;
    set @count =
            (select distinct count(*) from Membership.Members where datediff(month, card_issue_date, getdate()) <= 12);
    return @count;
end;
--drop function get_member_count;
--Tested function works
-- select*from Membership.Members;
create FUNCTION Membership.total_members_borrowed_books()
    RETURNS INTEGER
BEGIN
    DECLARE @total_members_borrowed_books INTEGER;
    SET @total_members_borrowed_books = (SELECT distinct count(*)
                                         FROM Borrows.Loans,
                                              Membership.Members
                                         where Borrows.Loans.member_ID = Membership.Members.member_ID);
    RETURN @total_members_borrowed_books;


end

create view Membership.percentage_borrowed_books as
select Borrows.get_loan_count()                                             as 'total_loan_count',
       Membership.total_members_borrowed_books()                            as 'total_membership_count',
       Membership.get_valid_member_count()                                  as 'valid_membership_count',

       (Borrows.get_loan_count() / Membership.total_members_borrowed_books()) * 100 as 'percentage_borrowed_books'
;

create view Borrows.loans_last_year as
select count(*) as loans_last_year
from Borrows.Loans
where year(checkout_date) = year(getdate()) - 1;

select *
from Borrows.loans_last_year;
-- select*from Membership.Members;
-- select * from Membership.percentage_borrowed_books;
-- drop view Membership.percentage_borrowed_books;
-- drop function total_members_borrowed_books
-- drop function Membership.total_members_borrowed_books;
-- select * from total_members_borrowed_books();
-- select * from Borrows.Loans;
-- select 'Total' from Membership.Members;
/*Count how many loans did the library do last year?*/

/*
  SELECT member_id, COUNT(member_id)
FROM Borrows.Loans  GROUP BY member_id
HAVING COUNT (member_id)=(
SELECT MAX(mycount)
FROM (
SELECT member_id, COUNT(member_id) mycount
FROM Borrows.Loans
GROUP BY member_id) as mim)
;
go


  */



