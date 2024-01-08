**FREE
//
//  start using embedded SQL
//
Dcl-S DataISO DATE(*ISO) Inz(d'2023-12-31');
Dsply ('La data è inizializzata a ' + %char(DataISO) + '.');
EXEC SQL SELECT CURRENT_DATE INTO :DataISO FROM SYSIBM/SYSDUMMY1;
Dsply ('La data ora è impostata a ' + %char(DataISO) + '.');
*InLR = *ON;
Return;
