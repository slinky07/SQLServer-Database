use AragonMunicipalLibrary
;
/*Deletes all null first_name or last_name entry */
DELETE FROM Membership.Members WHERE first_name is null or last_name is null ;