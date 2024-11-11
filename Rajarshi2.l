%{
#include<stdio.h>
int i;
%}

%%
[0-9]+ {i=atoi(yytext);

int f=0;
for(int it=2; it<=sqrt(i); it++){
if(!(i%it)){
f=1;
break;
}
}

if(!f){
printf("PRIME!");
}
else{
printf("Bhoger maa");
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