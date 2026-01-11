%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int line;
void yyerror(const char *s);
%}

/* -------- TOKENS FROM PHASE 01 -------- */
%token PLAY RUN SR PLAYER TOSS TWO
%token APPEAL REVIEW MIC DECISION
%token PAVILION FREEHIT OUT INNINGS OVER

%token IDENTIFIER NUMBER STRING
%token ASSIGN XOR_EQ PLUS MINUS MUL DIV MOD
%token ARROW_L ARROW_R
%token TERMINATOR

%%

/* -------- PROGRAM STRUCTURE -------- */

program
    : PLAY block
    ;

block
    : '{' stmt_list '}'
    ;

/* -------- STATEMENT LIST -------- */

stmt_list
    : stmt stmt_list
    | /* empty */
    ;

/* -------- STATEMENTS -------- */

stmt
    : declaration
    | assignment
    | conditional
    | loop
    | input
    | output
    | control
    ;

/* -------- DECLARATION -------- */

declaration
    : type IDENTIFIER TERMINATOR
    ;

type
    : RUN
    | SR
    | TWO
    | TOSS
    | PLAYER
    ;

/* -------- ASSIGNMENT -------- */

assignment
    : IDENTIFIER ASSIGN expression TERMINATOR
    ;

/* -------- CONDITIONAL -------- */

conditional
    : APPEAL '(' expression ')' block
    | APPEAL '(' expression ')' block REVIEW block
    ;

/* -------- LOOPS -------- */

loop
    : OVER '(' expression ')' block
    | INNINGS '(' assignment expression TERMINATOR assignment ')' block
    ;

/* -------- INPUT / OUTPUT -------- */

input
    : DECISION ARROW_L IDENTIFIER TERMINATOR
    ;

output
    : MIC ARROW_R expression TERMINATOR
    ;

/* -------- CONTROL -------- */

control
    : PAVILION expression TERMINATOR
    | FREEHIT TERMINATOR
    | OUT TERMINATOR
    ;

/* -------- EXPRESSIONS -------- */

expression
    : expression operator expression
    | IDENTIFIER
    | NUMBER
    | STRING
    ;

/* -------- OPERATORS -------- */

operator
    : PLUS
    | MINUS
    | MUL
    | DIV
    | MOD
    | XOR_EQ
    ;

%%

/* -------- ERROR HANDLING -------- */

void yyerror(const char *s)
{
    printf("Syntax Error at line %d: %s\n", line, s);
}

int main()
{

    if (yyparse()==0)
    printf("\n Syntax analysis successful\n");
    else
    printf("\n Syntax analysis not successful\n");
    return 0;
}

