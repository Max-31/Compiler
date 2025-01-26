%{
#include<stdio.h>
#include<math.h>
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
        if(n>1){
            step ++;
        }
        else{
            printf("COMPOSITE\n");
            step=0;
        }
    }

    if(step == 2){
        int i=0;
        for(i=2; i<=sqrt(n); i++){
            if(n%i == 0) break;
        }

        if(i> sqrt(n)){
            printf("PRIME\n");
        }
        else{
            printf("NOT PRIME\n");
        }
        step++;
    }

}

.|\n {step=0;}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}