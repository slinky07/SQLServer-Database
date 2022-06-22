use master
;

/**
  main database creation
 */


 -- -------------------------------------------------------
-- check if database exists. if it existsm drop then create it, else create it

if exists (select * from sys.databases where name = 'AragonMunicipalLibrary')
begin
  print '=============================Database exists. Dropping and re-creating it.============================='
  drop database AragonMunicipalLibrary;
  create database AragonMunicipalLibrary;
end
else
begin
  create database AragonMunicipalLibrary
end
;
go
use AragonMunicipalLibrary



---------------------------------------------------------------------------------
/*
create database AragonMunicipalLibrary;
;
go

use AragonMunicipalLibrary;
go
*/

-- drop database AragonMunicipalLibrary;

/*Show all database tables in microsoft sql server*/



-- select * from sys.tables




-- drop database if exists AragonMunicipalLibrary;

