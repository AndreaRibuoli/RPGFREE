# RPGFREE

This repository is meant to be installable on IBM i in a *source\-level\-distribution* way:

`PASERIE/INSTALL REPO_OWNER(AndreaRibuoli) REPOSITORY(RPGFREE)`

It will contain simple RPG programs that are commented here in the **README.md**.

RPG **full** free format is adopted in these examples.

### RPG01

``` RPG
**FREE
Dcl-DS DataLog DtaAra(*AUTO : *USRCTL : 'RPGFREE/DATALOG');
  Giorno  Zoned(2 :0);
  Mese    Zoned(2 :0);
  Anno    Zoned(4 :0);
End-DS;
Dcl-S DataISO DATE(*ISO) Inz(d'2023-12-31');
Anno   = %subdt(DataISO:*YEARS);
Mese   = %subdt(DataISO:*MONTHS);
Giorno = %subdt(DataISO:*DAYS);
Dsply ('La data impostata è ' + %char(DataISO) + '.');
*InLR = *ON;
Return;
```

With **Dcl\-DS** we are declaring a *Data Structure*: this one is specialized to be based on a *Data Area* (**\*DTAARA**). On its turn this data area is qualified to be **\*AUTO**: this means the data area `RPGFREE/DATALOG` will be created (if not already existing) and will be updated consistently with the values the fields *Giorno*, *Mese* and *Anno* have when the program is ending.

The values are extracted from a *Stand\-alone* variable we declare (**Dcl\-S**) as **DATE** in the **\*ISO** format. We initialize the variable while declaring it with a **date literal**: `d'2023-12-31'`.

A DATE type can be manipulated via the `%subdt` *built\-in\-function* (**BIF**). The second parameter possible values are limited by the type of the first one:

| type      | \*MSECONDS | \*SECONDS | \*MINUTES | \*HOURS | \*DAYS | \*MONTHS | \*YEARS |
|:---------:|:----------:|:---------:|:---------:|:-------:|:------:|:--------:|:-------:|
| DATE      |            |           |           |         | *yes*  |   *yes*  |  *yes*  | 
| TIME      |            |    *yes*  |    *yes*  |  *yes*  |        |          |         |
| TIMESTAMP |     *yes*  |    *yes*  |    *yes*  |  *yes*  | *yes*  |   *yes*  |  *yes*  |

Please note that **\*MSECONDS** stands for **micro**\-seconds (not *milli*) and is only available if the type is a TIMESTAMP (not a TIME!).