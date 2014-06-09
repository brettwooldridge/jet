grammar Operators;

operator : operator_character operator? ;

binary_operator : operator ;

prefix_operator : operator ;

postfix_operator : operator;

assignment_operator : '=' ;

operator_character : '/' | '=' | '-' | '+' | '!' | '*' | '%' | '<' | '>' | '&' | '|' | '^' | '~' | '.' ;
