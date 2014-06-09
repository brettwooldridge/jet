lexer grammar CommonTerminals;


/* Fragments  */
HEX_DIGIT : [0-9A-Za-z] ;

OCTAL_DIGIT : [0-7] ;

DECIMAL_DIGIT : [0-9] ;

WS : [ \t\r\n]+ -> skip ;

