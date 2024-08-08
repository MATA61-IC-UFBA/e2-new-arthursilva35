/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"
#include <stdio.h>
// Definições dos tokens
#define NUMBER  256
#define PLUS    257
#define MINUS   258
#define TIMES   259
#define DIV     260
#define EOL     261
#define ERROR   262
%}

%%
[0-9]+    { return NUMBER;}
"+"       { return PLUS;}
"-"       { return MINUS;}
"*"       { return TIMES;}
"/ "      { return DIV;}
"/n"      {return EOL;}
[/t]      {/* skip whitespace */ }
.       { return ERROR; }
%%

int main() {


}




