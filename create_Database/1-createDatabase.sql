use master
;

/**
  main database creation
 */

create database AragonMunicipalLibrary2;
;
go
use AragonMunicipalLibrary2;
go
drop database AragonMunicipalLibrary2;
/*Show all database tables in microsoft sql server*/



select * from sys.tables




-- drop database if exists AragonMunicipalLibrary;

-- -------------------------------------------------------
-- check if database exists else create it

/*

if exists (select * from sys.databases where name = 'AragonMunicipalLibrary')
begin
  print 'Database exists. DROPPING AragonMunicipalLibrary';
    drop database AragonMunicipalLibrary;
end
else
begin
  create database AragonMunicipalLibrary
end
;

*/
