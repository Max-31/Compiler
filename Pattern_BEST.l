%{
#include<stdio.h>
#include<stdlib.h>
int n, step=0;
%}

%%
[0-9]+ {

if(step==0){
n= atoi(yytext);
step++;
printf("Size of Arrays: %d\n", n);
}

if(step==1){

for(int i=1; i<=n; i++){
for(int j=1; j<=i; j++){
printf("*");
}
printf("\n");
}

step++;
}
};

.|\n {/*Ignore Other characters*/}

%%
int main(){
printf("Enter No. of Lines: ");
yylex();
return 0;
}

int yywrap(){
return 1;
}