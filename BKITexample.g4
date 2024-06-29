grammar BKITexample;


prog: stat* EOF;
/** The start rule; begin parsing here. */

stat: Id
    | Int
    | NEWLINE
    | WS
    ;

Id: [a-z] [a-zA-Z0-9_]*;
Int: '0' | [1-9]+ [0-9]*;

NEWLINE:'\r'? '\n' ; // return newlines to parser (is end-statement signal) 20
WS : [ \t]+ -> skip ; // toss out whitespace