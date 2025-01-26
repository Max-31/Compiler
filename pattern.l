%{
#include<stdio.h>
int step=0;
%}

%%
[0-9]+ {
    int n;
    if(step==0)
        n= atoi(yytext), step++;
    
    else if(step==1){
        for(int i=0; i<n; i++){
            for(int j=0; j<i; j++)
                printf("*");
            printf("\n");
        }

        step ++;
    }

}

%%

int main(){ 
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}