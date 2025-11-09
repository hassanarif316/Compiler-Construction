# Compiler-Construction
A cricket themed custom programming language (Cric++) implemented using Lex.

# Crick++ Lexical Analyzer 🏏

This project implements a custom cricket-themed programming language called **Cric++**, using **Lex (flex)**.

## Features
- Tokenizes keywords, identifiers, numbers, operators, and comments
- Supports both single-line and multi-line comments (`$` and `$$ ... $$`)
- Custom operators: `->`, `<-`, `^`, `^=`
- Error handling for invalid identifiers and symbols
- Outputs tokens with line numbers into `tokens.txt`

## Run Instructions
```bash
flex crick.l
gcc lex.yy.c -lfl -o crick
./crick < code.txt

