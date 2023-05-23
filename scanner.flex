%{
#include "token.h"
%}

%x comment

DIGIT [0-9]
LETTER [a-zA-Z]
ID [a-zA-Z_][a-zA-Z0-9_]{0,30}

%%

[[:blank:]" "\n]      /* eat blank space*/
"//"[^\n]*              /* eat one line comment */
"/*"                    BEGIN(comment);
<comment>[^*]*          /* eat comment body */
<comment>"*"+[^*/]*     /* eat comment body */
<comment>"*"+"/"        BEGIN(INITIAL);
auto        |
break       |
case        |
char        |
continue    |
const       |
do          |
default     |
double      |
else        |
enum        |
extern      |
for         |
if          |
goto        |
float       |
int         |
long        |
register    |
return      |
signed      |
static      |
sizeof      |
short       |
struct      |
switch      |
typedef     |
union       |
void        |
while       |
volatile    |
unsigned    {return T_KEYWORD;}
"#"{LETTER}+                    {return T_PREPROCESS;}
["]([^"\\\n]|\\(.|\n))*         {return T_ERROR;}
["]([^"\\\n]|\\(.|\n))*["]      {return T_STRING;}
[']([^'\\n]|\\(.|\n))*          {return T_ERROR;}
[']([^'\\n]|\\(.|\n))*[']       {return T_CHAR;}
{DIGIT}+"."?{DIGIT}*            {return T_NUMERICCONST;}
{ID}                            {return T_IDENT;}
"=="        {return T_EQEQ;}
"++"        {return T_PLUSPLUS;}
"--"        {return T_MINUSMINUS;}
">="        {return T_GEQ;}
"<="        {return T_LEQ;}
"!="       {return T_ECLAIMEQ;}
"&&"        {return T_AMPAMP;}
"|"          {return T_VERTBAR;}
"||"        {return T_VERTVERT;}
">>"        {return T_RANGRANG;}
"<<"        {return T_LANGLANG;}
"+="        {return T_PLUSEQ;}
"-="        {return T_MINUSEQ;}
"*="        {return T_STAREQ;}
"/="        {return T_FORSLASHEQ;}
"%="        {return T_MODEQ;}
"<<="       {return T_RANGRANGEQ;}
">>="       {return T_LANGLANGEQ;}
"&="        {return T_AMPEREQ;}
"^="        {return T_CARETEQ;}
"|="        {return T_BAREQ;}
"?:"        {return T_QUESCOLON;}
"->"        {return T_ARROW;}
">"         {return T_LANGBRACK;}
"<"         {return T_RANGBRACK;}
"{"         {return T_LBRACE;}
"}"         {return T_RBRACE;}
"["         {return T_LBRACK;}
"]"         {return T_RBRACK;}
"("         {return T_LPAREN;}
")"         {return T_RPAREN;}
\\          {return T_BACKSLASH;}
"+"         {return T_PLUS;}
"-"         {return T_MINUS;}
"*"         {return T_STAR;}
"/"         {return T_FORSLASH;}
"="         {return T_EQ;}
"%"         {return T_MOD;}
"."         {return T_PERIOD;}
"~"         {return T_TILDE;}
"!"         {return T_EXCLAIM;}
"?"         {return T_QUESTION;}
"$"         {return T_DOLLAR;}
"^"         {return T_CARET;}
";"         {return T_SEMI;}
":"         {return T_COLON;}
","         {return T_COMMA;}
.           {return T_ERROR;}

%%
int yywrap() {return 1;}