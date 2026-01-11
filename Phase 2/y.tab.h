/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PLAY = 258,                    /* PLAY  */
    RUN = 259,                     /* RUN  */
    SR = 260,                      /* SR  */
    PLAYER = 261,                  /* PLAYER  */
    TOSS = 262,                    /* TOSS  */
    TWO = 263,                     /* TWO  */
    APPEAL = 264,                  /* APPEAL  */
    REVIEW = 265,                  /* REVIEW  */
    MIC = 266,                     /* MIC  */
    DECISION = 267,                /* DECISION  */
    PAVILION = 268,                /* PAVILION  */
    FREEHIT = 269,                 /* FREEHIT  */
    OUT = 270,                     /* OUT  */
    INNINGS = 271,                 /* INNINGS  */
    OVER = 272,                    /* OVER  */
    IDENTIFIER = 273,              /* IDENTIFIER  */
    NUMBER = 274,                  /* NUMBER  */
    STRING = 275,                  /* STRING  */
    ASSIGN = 276,                  /* ASSIGN  */
    XOR_EQ = 277,                  /* XOR_EQ  */
    PLUS = 278,                    /* PLUS  */
    MINUS = 279,                   /* MINUS  */
    MUL = 280,                     /* MUL  */
    DIV = 281,                     /* DIV  */
    MOD = 282,                     /* MOD  */
    ARROW_L = 283,                 /* ARROW_L  */
    ARROW_R = 284,                 /* ARROW_R  */
    TERMINATOR = 285               /* TERMINATOR  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define PLAY 258
#define RUN 259
#define SR 260
#define PLAYER 261
#define TOSS 262
#define TWO 263
#define APPEAL 264
#define REVIEW 265
#define MIC 266
#define DECISION 267
#define PAVILION 268
#define FREEHIT 269
#define OUT 270
#define INNINGS 271
#define OVER 272
#define IDENTIFIER 273
#define NUMBER 274
#define STRING 275
#define ASSIGN 276
#define XOR_EQ 277
#define PLUS 278
#define MINUS 279
#define MUL 280
#define DIV 281
#define MOD 282
#define ARROW_L 283
#define ARROW_R 284
#define TERMINATOR 285

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
