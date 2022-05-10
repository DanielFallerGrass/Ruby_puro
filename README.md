# Ruby_puro

Dicas valiosas:

We have already seen literals: every time we type an object directly into Ruby code, we are using a literal. Literals create objects which are used in the program.

|Ruby Literals include |
|:-----------------------:|
| Numbers               |
| Strings               |
| Symbols               |
| Arrays                |
| Hashes                |
| Ranges                |
| Regular Expressions   |
| Procs                 |

Booleans and nil:

* nil and false are both false values.
* nil is used to indicate "no value" or "unknown" but evaluates to false in conditional expressions.
* true is a true value.
* All objects except nil and false evaluate to a true value in conditional expressions.

Types of strings in ruby:

| Types  |	Description |
|--------|--------------|
|%i      |	Array of Symbols  |
|%q      |	String            |
|%r      |	Regular Expression|
|%s      |	Symbol            |
|%w      |	Array of Strings  |
|%x      |	Backtick (capture subshell result)|


O `%w` Ajuda para não precisarmos escrever tudo com aspas e vígula.

Bad Code:   a = ["ant", "bee", "cat", "dog", "elk"]   #saída de a => ["ant", "bee", "cat", "dog", "elk"] 

Good Code:  a = %w[ant bee cat dog elk]               #saída de a => ["ant", "bee", "cat", "dog", "elk"] 
