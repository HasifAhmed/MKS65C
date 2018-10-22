#include "sieve.h"
#include <stdio.h>
#include <stdlib.h>

int sieve(int targetPrime){
    int range;

    if(targetPrime > 5000){
      range = targetPrime * log(targetPrime) * 1.15;
    }
    else{
      range = targetPrime * log(targetPrime) * 1.3 + 10;
    }
    char * arr = calloc(sizeof(char),range);




    int cnt = 0;
    int i = 2;
    int i2;
    for(;i<range;i++){
      if(arr[i] == 0){
        cnt ++;

        if(cnt == targetPrime){
          return i;
        }

        i2 = i + i;
        for(;i2 < range; i2 += i){
          arr[i2] = 1;
        }
      }
    }
    return 0;


}
