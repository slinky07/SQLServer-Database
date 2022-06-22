-- use AragonMunicipalLibrary;

/*
    by FBH
    5. What percentage of all loans eventually becomes overdue?
 */
--TODO ask if this should be included in the running of database or will this become a view or something?
-- TODO: this is a view

create view PercentageOverdue as
    select count(l.loan_ID) as total_loans,
           (select count(l.loan_ID)from Borrows.Loans as l where l.due_date > l.return_date) as overdue_loans
    concat('Percentage of all loans that eventually becomes overdue: ', (select count(l.loan_ID) from Borrows.Loans as l where l.due_date > l.return_date) / (select count(l.loan_ID) from Borrows.Loans as l) * 100, '%')
    ;
    go