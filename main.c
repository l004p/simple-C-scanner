#include <stdio.h>
#include "token.h"

extern FILE *yyin;
extern int yylex();
extern char *yytext;

int main() {
    yyin = fopen("01.c", "r");
    if(!yyin){
        printf("could not open file\n");
        return 1;
    }

    while(1){
        token_t t = yylex();
        if(t==T_EOF) break;
        printf("token: %d text: %s\n",t, yytext);
    }
}