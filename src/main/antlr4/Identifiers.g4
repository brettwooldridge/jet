grammar Identifiers;

import Literals, CommonTerminals;

identifier : IDENTIFIER_HEAD identifier_characters?
           | '`' IDENTIFIER_HEAD identifier_characters? '`'
           | implicit_parameter_name 
           ;

identifier_list : identifier | identifier ',' identifier_list ;

identifier_character : DECIMAL_DIGIT
                     | IDENTIFIER_HEAD
                     | '\u0300'..'\u0300'
                     | '\u1DC0'..'\u1DFF'
                     | '\u20D0'..'\u20FF'
                     | '\uFE20'..'\uFE2F'
                     ;

identifier_characters : identifier_character identifier_characters? ;

implicit_parameter_name : '$' decimal_digits ;

IDENTIFIER_HEAD : [a-Z]+
/* todo         : add unicode escapes U+00A8, U+00AA, U+00AD, U+00AF, U+00B2–U+00B5, or U+00B7–U+00BA ... */
                ;
