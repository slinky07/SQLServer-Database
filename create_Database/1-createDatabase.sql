/**
Authors:
  • Francis Sauvé
  • Tzvi Blackman
  • Nicolay Bang
  • François Boulay-Handfield

in the context of the Team project
for CCCS-330-754 in Spring 2022 semester.

  Main database creation

 1- check if database exists.
 2- if it exists:
    2.1- print message,
    2.2 drop database
    2.3 create it
 3- else create it
 use
 */
use master
;
go
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
;

---------------------------------OLD STUFF BELOW ------------------------------------------------

/*
create database AragonMunicipalLibrary;
;
go

use AragonMunicipalLibrary;
go
*/

-- drop database AragonMunicipalLibrary;
-- drop database if exists AragonMunicipalLibrary;

/*Show all database tables in microsoft sql server*/

-- select * from sys.tables


