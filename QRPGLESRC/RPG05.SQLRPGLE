**FREE
//
//  start using embedded SQL
//
Dcl-DS DataOraISO;
  #Data DATE(*ISO) Inz(d'2023-12-31');
  #Ora  TIME(*ISO);
End-DS;
Dsply ('La data è inizializzata a ' + %char(#Data) + '.');
EXEC SQL SELECT CURRENT_DATE, CURRENT_TIME INTO :DataOraISO FROM SYSIBM/SYSDUMMY1;
Dsply ('La data ora è impostata a ' + %char(#Data) + '.');
Dsply ('L''ora è stata impostata a ' + %char(#Ora) + '.');
*InLR = *ON;
Return;
