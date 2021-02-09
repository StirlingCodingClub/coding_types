# include<stdio.h>

int main(void){

    long i;

    for(i = 1; i < 1000000000; i++){
       if(i % 100000000 == 0){
           printf("%lu\n", i);
       }
    }
    return 0;
}

/*
 * To compile: gcc -Wall count_to_1_billion.c -o count_to_1_billion
 */