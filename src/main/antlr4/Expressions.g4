grammar Expressions;

import Types, Identifiers, Operators, CommonTerminals;

expression : prefix_expression binary_expressions? ;

expression_list : expression
                | expression ',' expression_list
                ;

binary_expressions : binary_expression binary_expressions? ;

binary_expression : binary_expression prefix_expression
                  | assignment_operator prefix_expression
                  | conditional_operator prefix_expression
                  | type_casting_operator
                  ;

conditional_operator : '?' expression ;

prefix_expression : prefix_operator? postfix_expression
                  | inout_expression
                  ;

binary_operator : operator ;

prefix_operator : operator ;

postfix_expression : operator ;

inout_expression : '&' identifier ;

type_casting_operator : 'is' type
                      | 'as' '?'? type
                      ;

operator : operator_character operator? ;
