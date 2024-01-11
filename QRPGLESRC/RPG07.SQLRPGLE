**FREE
//
//  start using embedded SQL
//
Dcl-DS RDB_dir EXTNAME('QADBXRDBD') Prefix('rdb':3) End-DS;
Dcl-S Local LIKE(rdbRMTN) INZ('*LOCAL');
EXEC SQL SELECT * INTO :RDB_dir FROM QADBXRDBD WHERE DBXRMTN = :Local;
Dsply ('Nome DATABASE: ' + rdbRDBN);
*InLR = *ON;
Return;
