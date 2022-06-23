/*Count how many loans did the library do last year?*/
--TODO I got the first query working, but I want to integrate it in a view
-- Q-2 as well. Dont run this yet as they dont all work.

create view loans_last_year as
select count(*) from Borrows.Loans as 'Book_Burrowed_Last_Year'
                where year(checkout_date) = year(getdate()) - 1;
/*What percentage of the membership borrowed at least one book?*/



        ;
create function get_loan_count() returns int as
begin
    declare @loan_count int;
    select @loan_count = count(*) from Borrows.Loans;
    return @loan_count;
end;
drop function get_loan_count;
/*Finds the number of members with valid memberships */
--TODO: We need to have all the members that populate have a card_issue_
  create function get_valid_member_count()
    returns int as
    begin
      declare @count int;
      set @count = (select distinct count(*) from Membership.Members where datediff( month ,card_issue_date , getdate())<=12);
      return @count;
    end;
--drop function get_member_count;

select*from Membership.Members;
create FUNCTION total_members_borrowed_books()
RETURNS INTEGER
BEGIN
DECLARE @total_members_borrowed_books INTEGER;
SET @total_members_borrowed_books = (SELECT distinct count(*) FROM Borrows.Loans where Membership.Members.Member_ID = Borrows.Loans.Member_ID)
RETURN @total_members_borrowed_books;


end
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



