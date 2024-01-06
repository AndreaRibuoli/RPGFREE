**FREE
//
// The first character of the name must be alphabetic.
//   This includes the characters $, #, and @.
// The remaining characters must be alphabetic or numeric.
//   This includes the underscore $, #, @, and _.
//
Dcl-S $data_$#@ DATE(*ISO) Inz(d'2023-12-31');
Dcl-S #data_$#@ DATE(*ISO) Inz(d'2024-01-01');
Dcl-S @data_$#@ DATE(*ISO) Inz(d'2024-01-02');
Dsply ('La prima data impostata è '   + %char($data_$#@) + '.');
Dsply ('La seconda data impostata è ' + %char(#data_$#@) + '.');
Dsply ('La terzaa data impostata è '  + %char(@data_$#@) + '.');
*InLR = *ON;
Return;
