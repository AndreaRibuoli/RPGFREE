**FREE
//
//  start using embedded SQL
//
Dcl-S ARTICS CHAR(15);
Dcl-S DESCRS CHAR(70);
Dcl-S Codice LIKE(ARTICS);
Dcl-S Descri LIKE(DESCRS);
Codice = '0001020100';
Descri = 'New description for this item';
EXEC SQL
  UPDATE PROVA00F
  SET   DESCRS = :Descri
  WHERE ARTICS = :Codice;
*InLR = *ON;
Return;
