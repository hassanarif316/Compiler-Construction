%{
#include "y.tab.h"
#include <stdio.h>

int line = 1;
%}

%x MCOMMENT

%%
\n              { line++; }


"\$\$"          { BEGIN(MCOMMENT); }
<MCOMMENT>"\$\$" { BEGIN(INITIAL); }
<MCOMMENT>.|\n  { }

"\$".*          { }


"play"      { return PLAY; }
"run"       { return RUN; }
"sr"        { return SR; }
"player"    { return PLAYER; }
"toss"      { return TOSS; }
"two"       { return TWO; }

"appeal"    { return APPEAL; }
"review"    { return REVIEW; }
"mic"       { return MIC; }
"decision"  { return DECISION; }

"pavilion"  { return PAVILION; }
"freehit"   { return FREEHIT; }
"out"       { return OUT; }
"innings"   { return INNINGS; }
"over"      { return OVER; }


"="         { return ASSIGN; }
"^="        { return XOR_EQ; }
"->"        { return ARROW_R; }
"<-"        { return ARROW_L; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return MUL; }
"/"         { return DIV; }
"%"         { return MOD; }


"{"         { return '{'; }
"}"         { return '}'; }
"("         { return '('; }
")"         { return ')'; }


"\.\."      { return TERMINATOR; }


\"[^\"\n]*\"    { return STRING; }
[0-9]+          { return NUMBER; }


[a-zA-Z][a-zA-Z1-9]*0*   { return IDENTIFIER; }


[ \t]+          { }


. {
    printf("Lexical Error at line %d: %s\n", line, yytext);
}

%%
int yywrap() { return 1; }

