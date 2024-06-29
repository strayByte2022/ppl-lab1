grammar BKITex2;


prog: stat* EOF;
/** The start rule; begin parsing here. */

stat: Id
    | Int
    | Float
    | Binary
    | Add
    | Sub
    | Mul
    | Div
    | Mod
    | NEWLINE
    | WS
    ;

Id: [a-z] [a-zA-Z0-9_]*;
Int: '0' | [1-9]+ [0-9]*;
Float: [1-9]+ ('.'|'e') '-'* [0-9]* ;
Binary: [0-1][0-1]*;


/* OPERATORS */
Add: '+';
Sub: '-';
Mul: '*';
Div: '/';
Mod: '%';

NEWLINE:'\r'? '\n' ; // return newlines to parser (is end-statement signal) 20
WS : [ \t]+ -> skip ; // toss out whitespace