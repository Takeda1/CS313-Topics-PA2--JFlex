/* The lexer for scanning command tokens. */
%%

%class CommandLexer

%{
  int lineNum = 0;
%}

Parameter = [:jletterdigit:]+
WhiteSpace = [ \r\t\f]

%%
/* These are the actual tokens getting scanned */
[:digit:]+ { return new Yytoken(Integer.parseInt(yytext()),lineNum); }
"@" { return new Yytoken("at",lineNum,true); }
"<-" { return new Yytoken("larrow",lineNum,true); }
"{" { return new Yytoken("lbrace",lineNum,true); }
"<=" { return new Yytoken("le",lineNum,true); }
"(" { return new Yytoken("lparen",lineNum,true); }
"<" { return new Yytoken("lt",lineNum,true); }
"=>" { return new Yytoken("rarrow",lineNum,true); }
"}" { return new Yytoken("rbrace",lineNum,true); }
";" { return new Yytoken("semi",lineNum,true); }
"~" { return new Yytoken("tilde",lineNum,true); }
"case" { return new Yytoken("case",lineNum,true); }
":" { return new Yytoken("colon",lineNum,true); }
"," { return new Yytoken("comma",lineNum,true); }
"/" { return new Yytoken("divide",lineNum,true); }
"." { return new Yytoken("dot",lineNum,true); }
"else" { return new Yytoken("else",lineNum,true); }
"false" { return new Yytoken("false",lineNum,true); }
"fi" { return new Yytoken("fi",lineNum,true); }
"if" { return new Yytoken("if",lineNum,true); }
"in" { return new Yytoken("in",lineNum,true); }
"inherits" { return new Yytoken("inherits",lineNum,true); }
"integer" { return new Yytoken("integer",lineNum,true); }
"isvoid" { return new Yytoken("isvoid",lineNum,true); }
"let" { return new Yytoken("let",lineNum,true); }
"loop" { return new Yytoken("loop",lineNum,true); }
"-" { return new Yytoken("minus",lineNum,true); }
"new" { return new Yytoken("new",lineNum,true); }
"not" { return new Yytoken("not",lineNum,true); }
"of" { return new Yytoken("of",lineNum,true); }
"+" { return new Yytoken("plus",lineNum,true); }
"pool" { return new Yytoken("pool",lineNum,true); }
"string" { return new Yytoken("string",lineNum,true); }
"then" { return new Yytoken("then",lineNum,true); }
"*" { return new Yytoken("*",lineNum,true); }
"true" { return new Yytoken("true",lineNum,true); }
"while" { return new Yytoken("while",lineNum,true); }
"type" { return new Yytoken("type",lineNum,true); }

{Parameter} { return new Yytoken(yytext(),lineNum); }
[\n] { lineNum += 1; }
{WhiteSpace} { /* Ignore Whitespace */ }
