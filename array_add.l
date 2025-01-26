%{
#include<stdio.h>
#include<stdlib.h>
int i, size;
int arr1[100], arr2[100], result[100];
int cnt1=0, cnt2=0, step=0;

void printArray(int arr[], int size){
    for(i=0; i<size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}
%}

%%
[0-9]+ {

    if(step==0){
        size= atoi(yytext);
        step++;
        printf("Size of Arrays: %d\n", size);
    }
    else if(step==1){
        arr1[cnt1++]= atoi(yytext);
        if(cnt1 == size)
            step++;
    }
    else if(step==2){
        arr2[cnt2++]= atoi(yytext);
        if(cnt2 == size)
            step++;
    }

    if(step==3){
        for(i=0; i<size; i++){
            result[i] = arr1[i] + arr2[i];
        }
        printf("Ans: ");
        printArray(result, size);

        step++;
    }
}

.|\n {}

%%
int main(){
printf("Enter Size of Array: ");
yylex();
return 0;
}

int yywrap(){
return 1;
}