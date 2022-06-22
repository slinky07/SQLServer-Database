/**
  @schema ItemCollection handles the tables for the Items
 */

  use AragonMunicipalLibrary;

create schema ItemCollection authorization dbo
;
go
/* Show all tables in database

 */
 SELECT name FROM sys.tables