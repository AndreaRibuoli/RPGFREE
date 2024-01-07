**FREE
//
//  start using embedded SQL
//
Dcl-S CDCLI CHAR(6)
Dcl-S RAGSC CHAR(35)
Dcl-S Codice LIKE(CDCLI)
Dcl-S Nome   LIKE(RAGSC)
Codice = '000780';
Nome = 'Pluto Srl';
EXEC SQL
  UPDATE ANCL200F
  SET   RAGSC = :Nome
  WHERE CDCLI = :Codice;
*InLR = *ON;
Return;
