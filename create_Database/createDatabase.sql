use master
;

/**
  main database creation
 */
create database AragonMunicipalLibrary
;
go
use AragonMunicipalLibrary;
go


-- drop database if exists AragonMunicipalLibrary;

-- -------------------------------------------------------
-- check if database exists else create it

/*

if exists (select * from sys.databases where name = 'AragonMunicipalLibrary')
begin
  print 'Database exists'
end
else
begin
  create database AragonMunicipalLibrary
end

*/
