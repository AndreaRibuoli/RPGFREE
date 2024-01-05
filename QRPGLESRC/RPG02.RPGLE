**FREE
Dcl-S $DataISO DATE(*ISO) Inz(d'2023-12-31');
Dcl-S #DataISO DATE(*ISO) Inz(d'2024-01-01');
Dcl-S @DataISO DATE(*ISO) Inz(d'2024-01-02');
Dcl-S çDataISO DATE(*ISO) Inz(d'2024-01-03');
Dsply ('La prima data impostata è ' + %char($DataISO) + '.');
Dsply ('La prima data impostata è ' + %char(#DataISO) + '.');
Dsply ('La prima data impostata è ' + %char(@DataISO) + '.');
Dsply ('La prima data impostata è ' + %char(çDataISO) + '.');
*InLR = *ON;
Return;
