"import" @keyword
"from" @keyword
"as" @keyword
;(import_specifier name: (identifier) @identity) 
(namespace_import (identifier) @namespace) 
(pair key:(property_identifier) @object_key) 
(template_substitution) @str_template
(if_statement condition:(parenthesized_expression) @condition_brackets)
(statement_block) @block 
