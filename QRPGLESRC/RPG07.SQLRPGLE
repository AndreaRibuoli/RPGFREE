**FREE
//
//  start using embedded SQL
//
Dcl-DS RDB_dir EXTNAME('QADBXRDBD') Prefix('RDB' : 3) End-DS;
Dcl-S Local LIKE(RDBRMTN) INZ('*LOCAL');
EXEC SQL SELECT * INTO :RDB_dir FROM QADBXRDBD WHERE DBXRMTN = :Local;
Dsply ('Nome DATABASE: ' + RDBRDBN);
*InLR = *ON;
Return;
