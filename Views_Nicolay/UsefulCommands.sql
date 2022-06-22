use AragonMunicipalLibrary
;
/*Deletes all null first_name or last_name entry */

--TODO this should not be an issue at all since FN and LN are not null by table definition.

DELETE FROM Membership.Members WHERE first_name is null or last_name is null ;