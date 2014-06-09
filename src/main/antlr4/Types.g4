grammar Types;

import Identifiers;

type : array_type
     | function_type
     | type_identifier
     | tuple_type
     | optional_type
     | implicitly_unwrapped_optional_type
     | protocol_composition_type
     | metatype_type
     ;

type_identifier : type_name generic_argument_clause?
                | type_name generic_argument_clause? '.' type_identifier
                ;

type_name : identifier ;

generic_argument_clause  : '<' generic_argument_list '>' ;

generic_argument_list : generic_argument | generic_argument ',' generic_argument_list ;

generic_argument : type;

/* Array type */
array_type : type '[' ']' | array_type '[' ']' ;

/* Function type*/
function_type : type '->' type ;

/* Optional type*/
optional_type : type '?' ;

/* Wrapped Optional type*/
implicitly_unwrapped_optional_type : type '!' ;

/* Metadata type*/
metatype_type : type '.' 'Type' | type '.' 'Protocol' ;

/* Protocol */
protocol_composition_type : 'protocol' '<' protocol_identifier_list? '>' ;

protocol_identifier_list : protocol_identifier | protocol_identifier ',' + protocol_identifier_list ;

protocol_identifier : type_identifier ;

/* Tuple */
tuple_type : '(' tuple_type_body? ')' ;

tuple_type_body : tuple_type_element_list '...'? ;

tuple_type_element_list : tuple_type_element | tuple_type_element ',' tuple_type_element_list ;

tuple_type_element : attributes? 'inout'? 'type' | 'inout'? element_name type_annotation ;

element_name : identifier ;

/* Type annotation */
type_annotation : attributes? type ;

/* Attributes */
attribute : '@' attribute_name attribute_argument_clause? ;

attribute_name : identifier ;

attribute_argument_clause : '(' balanced_tokens? ')' ;

attributes : attribute attributes? ;

balanced_tokens : balanced_token balanced_tokens? ;

balanced_token : '(' balanced_tokens? ')'
               | '[' balanced_tokens? ']'
               | '{' balanced_tokens? '}'
               | identifier
/* todo        | keyword
               | literal
               | operator
               | 
*/
               | BALANCE_EXCEPTIONS  // Any punctuation except (­, )­, [­, ]­, {­, or }­
               ;

BALANCE_EXCEPTIONS : ~[\(\)\[\]\{\}]+ ; 
