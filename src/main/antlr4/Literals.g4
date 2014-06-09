grammar Literals;

import CommonTerminals ;

integer_literal : binary_literal
                | octal_literal
                | decimal_literal
                | hexadecimal_literal
                ;

/* Decimal literals */
decimal_literal : DECIMAL_DIGIT decimal_literal_characters? ;

decimal_literal_character : DECIMAL_DIGIT | '_' ;

decimal_literal_characters : decimal_literal_character decimal_literal_characters? ;

decimal_digits : DECIMAL_DIGIT decimal_digits* ;

/* Binary literals */
binary_literal : '0b' binary_digit binary_literal_characters? ;

binary_literal_character : binary_digit | '_' ; 

binary_literal_characters : binary_literal_character binary_literal_characters? ;

binary_digit : '0' | '1' ;

/* Octal literals */
octal_literal : OCTAL_DIGIT octal_literal_characters? ;

octal_literal_character : OCTAL_DIGIT | '_' ;

octal_literal_characters : octal_literal_character octal_literal_characters? ;

/* Hexadecimal literals */
hexadecimal_literal : '0x' HEX_DIGIT hexadecimal_literal_characters? ;

hexadecimal_literal_character : HEX_DIGIT | '_' ;

hexadecimal_literal_characters : hexadecimal_literal_character hexadecimal_literal_characters? ;
