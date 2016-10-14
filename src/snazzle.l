%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
[ \t\n] ;
[0-9]+\.[0-9]+ { cout << "Found a floating-point number:" << yytext << endl; }
[0-9]+ { cout << "Found an integer:" << yytext << endl; }
[a-zA-Z0-9]+ { cout << "Found a string:" << yytext << endl; }
%%
int main (int,char**) {

  // open a file handle to a specific file
  FILE *myfile = fopen("snazzlefile.txt","r");

  // make sure the handler is valid
  if (!myfile){
    cout << "Error opening file" << endl;
    return -1;
  }
  
  // set lex to read from it instead of defaulting to STDIN:
  yyin = myfile;
  
  
  // lex through the input
  yylex();
}
