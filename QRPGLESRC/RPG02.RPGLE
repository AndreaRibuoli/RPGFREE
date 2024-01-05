**FREE
Dcl-S $DataISO DATE(*ISO) Inz(d'2023-12-31');
Dcl-S #DataISO DATE(*ISO) Inz(d'2024-01-01');
Dcl-S @DataISO DATE(*ISO) Inz(d'2024-01-02');
Dsply ('La prima data impostata è ' + %char($DataISO) + '.');
Dsply ('La seconda data impostata è ' + %char(#DataISO) + '.');
Dsply ('La terzaa data impostata è ' + %char(@DataISO) + '.');
*InLR = *ON;
Return;
