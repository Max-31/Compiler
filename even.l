%{
#include<stdio.h>
int step=0;
%}

%%
[0-9]+ {
    int n;
    if(step == 0){
        n= atoi(yytext);
        step++;
    }

    if(step == 1){
        if(n%2){
            printf("ODD\n");
        }
        else{
            printf("EVEN\n");
        }
        step ++;
    }
}

.|\n {step = 0;}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}