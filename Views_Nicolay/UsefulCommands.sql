use AragonMunicipalLibrary
;
/*Deletes all null first_name or last_name entry */
DELETE FROM Members.Members WHERE first_name is null or last_name is null ;