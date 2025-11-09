%{
#include <stdio.h>
int line = 1;
FILE *fp;
%}

%%
(play|run|sr|player|toss|two|appeal|mic|review|decision|pavilion|freehit|out|innings|over)     { fprintf(fp,"Line no.%d: Keyword: %s\n", line, yytext); }
([0-9]+(\.[0-9]+)?[e][+-]?[0-9]+)         { fprintf(fp,"Line no.%d: Exp no.: %s\n", line, yytext); }
[0-9]+\.[0-9]+       { fprintf(fp,"Line no.%d: Float no.: %s\n", line, yytext); }
[a-zA-Z][a-zA-Z0-9]*0[a-zA-Z0-9]*      { fprintf(fp,"Line no.%d: Error: %s (Invalid Identifier: contains 0)\n", line, yytext); }
[0-9]+[a-zA-Z1-9]+	      { fprintf(fp,"Line no.%d: Error: %s (Invalid Identifier)\n", line, yytext); }
[0-9]+         { fprintf(fp,"Line no.%d: Integer: %s\n", line, yytext); }
\"[^\"]*\"     { fprintf(fp,"Line no.%d: String: %s\n", line, yytext); }
'[a-zA-Z0-9]'        { fprintf(fp,"Line no.%d: Character: %s\n", line, yytext); }
(\^=|->|<-|\^|==|=|\+\+|\-\-|\+|\-|\*|\/|%|>|<|>=|<=|&&|\+=|\-=|\*=|\/=)    { fprintf(fp,"Line no.%d: Operator: %s\n", line, yytext); }
(\.\.)        { fprintf(fp,"Line no.%d: Terminator: %s\n", line, yytext); }
[\{\}\(\)\[\]]        { fprintf(fp,"Line no.%d: Punctuation token: %s\n", line, yytext); }
[a-zA-Z][a-zA-Z1-9]*          { fprintf(fp,"Line no.%d: Identifier token: %s\n", line, yytext); }
\$[^\n$]*     { fprintf(fp,"Line no.%d: Comment: %s\n", line, yytext); }
\$\$([^$]|\n|\$[^$])*\$\$   { fprintf(fp,"Line no.%d: Multi line comment: %s\n", line, yytext); }
\$\$([^$]|\n|\$[^$])*$   { fprintf(fp,"Line no.%d: Error: %s(missing closing $)\n", line, yytext); }

[ \t\r]+        { /* ignore spaces */ }
\n            { line++; }

.             { fprintf(fp,"Line no.%d: Others: %s\n", line, yytext); }

%%

int main() {
    fp = fopen("tokens.txt", "w");
    if (!fp) {
        printf("Error creating output file!\n");
        return 1;
    }

    yylex();
    fclose(fp);
    printf("Token file generated: tokens.txt\n");
    return 0;
}

