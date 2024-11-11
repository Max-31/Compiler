%{
#include<stdio.h>
int i;
%}

%%
[0-9]+ {i=atoi(yytext);

if(i%2 == 0) 
printf("Input number is Even");

else 
printf("Input number is Odd");
};

%%
int main(){
yylex();
return 0;
}

int yywrap(){
return 1;
}