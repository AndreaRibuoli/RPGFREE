**FREE
//
//  start using embedded SQL
//
Dcl-DS RDB_dir EXTNAME('QADBXRDBD') End-DS;
Dcl-S Local LIKE(DBXRMTN) INZ(*LOCAL);
EXEC SQL SELECT * INTO :RDB_dir FROM QADBXRDBD WHERE DBXRMTN = :Local;
Dsply ('Nome DATABASE: ' + DBXRDBN);
InLR = *ON;
Return;
