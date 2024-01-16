**FREE
//
//  start using embedded SQL
//
Dcl-S ARTICS CHAR(15);
Dcl-S Codice LIKE(ARTICS);
Codice = '0001020100';
EXEC SQL
  INSERT INTO PROVA00F (ARTICS) VALUES (:Codice);
IF SQLCOD < 0;
  Dsply ('Codice errore SQL ' + %char(SQLCOD) + '.');
  Dsply (%subst(SQLERRMC:1:50));
ENDIF;
*InLR = *ON;
Return;
