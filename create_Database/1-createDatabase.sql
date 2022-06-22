use master
;

/**
  main database creation
 */
--
create database AragonMunicipalLibrary;
;
go

use AragonMunicipalLibrary;
go

-- drop database AragonMunicipalLibrary;

/*Show all database tables in microsoft sql server*/



-- select * from sys.tables




-- drop database if exists AragonMunicipalLibrary;

-- -------------------------------------------------------
-- check if database exists else create it



-- if exists (select * from sys.databases where name = 'AragonMunicipalLibrary')
-- begin
--   print 'Database exists'
--     drop database AragonMunicipalLibrary;
-- end
-- else
-- begin
--   create database AragonMunicipalLibrary
-- end
--
-- use AragonMunicipalLibrary
