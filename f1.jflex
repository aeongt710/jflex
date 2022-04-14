%%
%class f1
%unicode
%standalone
%line
%column

digit=\d
Number=\d\d*
Decimal={Number}\.{Number}?
sl=\p{Lower}
cl=\p{Upper}
string=(\".*\")
relOp=(<|>|(<=)|(>=)|(\!=)|(==))
id=\w*
ops=(\+|\-|\/|\*|\%)
keyword=((int)|(string)|(for)|(if)|(main)|(println)|(scan)|(else)|(class)|(public)|(static)|(void)|(boolean)|(true)|(false)|(return)|(break)|(System)|(out))
MultiCommit=(\/\*\p{ASCII}*\*\/)
SingleCommit=(\/\/.*)
ter=(\;)
lp=(\()
rp=(\))
lcb=(\{)
rcb=(\})
lsb=(\[)
lrb=(\])
%%
{SingleCommit} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Single Commit",yytext(),yyline,yycolumn);}
{MultiCommit} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Multi Commit",yytext(),yyline,yycolumn);}
{ter} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","TER (",yytext(),yyline,yycolumn);}
{lp} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Left (",yytext(),yyline,yycolumn);}
{rp} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Right )",yytext(),yyline,yycolumn);}
{lcb} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Left {",yytext(),yyline,yycolumn);}
{rcb} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Right }",yytext(),yyline,yycolumn);}
{lsb} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Left [",yytext(),yyline,yycolumn);}
{lrb} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Right ]",yytext(),yyline,yycolumn);}
{digit}   {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","DIGIT",yytext(),yyline,yycolumn);}
{Number}  {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","NUMBER",yytext(),yyline,yycolumn);}
{Decimal} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","DECIMAL",yytext(),yyline,yycolumn);}
{ops}     {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","OPS",yytext(),yyline,yycolumn);}
{relOp}   {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","Rel Op",yytext(),yyline,yycolumn);}
{keyword} {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","KEYWORD",yytext(),yyline,yycolumn);}
{id}      {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","IDENTIFIER",yytext(),yyline,yycolumn);}
{string}  {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","STRINGS",yytext(),yyline,yycolumn);}
{sl}      {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","SMALL LETTER",yytext(),yyline,yycolumn);}
{cl}      {System.out.printf(" %14s (%-25s) at line %5d  column  %5d\n","CAPTIAL LETTER",yytext(),yyline,yycolumn);}
\n {}
. {}