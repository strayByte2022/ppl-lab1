grammar BKITex1;


prog: stat* EOF;
/** The start rule; begin parsing here. */

stat: Int
    | Float
    | Binary
    | NEWLINE
    | WS
    ;

Int: '0' | [1-9]+ [0-9]*;
Float: [1-9]+ ('.'|'e') '-'* [0-9]* ;
Binary: [0-1][0-1]*;

NEWLINE:'\r'? '\n' ; // return newlines to parser (is end-statement signal) 20
WS : [ \t]+ -> skip ; // toss out whitespace