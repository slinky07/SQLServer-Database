/**
  @schema ItemCollection handles the tables for the Items
  TODO: [2022-06-22 10:30:47] [S0001][111] Line 3: 'CREATE SCHEMA' must be the first statement in a query batch.
  Get this error when running from run config, all schemas at once, the last one does not execute
 */
--
-- use AragonMunicipalLibrary;

create schema ItemCollection authorization dbo
;
go
/* Show all tables in database

 */
--  SELECT name FROM sys.tables


select *