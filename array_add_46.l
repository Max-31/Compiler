%{
#include<stdio.h>
int i;
%}

%%
[0-9]+ {i=atoi(yytext);
int a[i], b[i];

for(int it=0; it<i; it++){
scanf("%d", &a[it]);
}

for(int it=0; it<i; it++){
scanf("%d", &b[it]);
}

for(int it=0; it<i; it++){
printf("%d ", a[it]+b[it]);
}

};

%%
int main(){
yylex();
return 0;
}

int yywrap(){
return 1;
}