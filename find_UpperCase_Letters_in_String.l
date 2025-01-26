%{
#include<stdio.h>
%}

%%
[A-Z]+ {
    printf("Word is Capital: %s\n", yytext);
}

.|\n {}
%%

int main(){
    printf("Enter String: ");
    yylex();
    return 1;
}

int yywrap(){
    return 1;
}