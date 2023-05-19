%{
#include "token.h"
%}

DIGIT [0-9]
LETTER [a-zA-Z]
ID [a-zA-Z_][a-zA-Z0-9_]{0,30}

%%

{ID}                    {return T_IDENT;}
{DIGIT}+"."?{DIGIT}*    {return T_NUMERICCONST;}
'[:print:][:cntrl:]'    {return T_CHAR;}
"({DIGIT}{LETTER}[:punct:][:space:])*"      {return T_STRING;}

"=="        {return T_EQEQ;}
"++"        {return T_PLUSPLUS;}
"--"        {return T_MINUSMINUS;}
">="        {return T_GEQ;}
"<="        {return T_LEQ;}
"!="        {return T_ECLAIMEQ;}
">"         {return T_LANGBRACK;}
"<"         {return T_RANGBRACK;}
"+"         {return T_PLUS;}
"-"         {return T_MINUS;}
"*"         {return T_STAR;}
"/"         {return T_FORSLASH;}
"%"         {return T_MOD;}
.           {return T_ERROR;}

%%
int yywrap() {return 1;}