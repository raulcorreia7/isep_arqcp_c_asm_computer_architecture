#include "asm.h"
#include <stdio.h>
int num = 5;
short int array[] = {1, 2, 3, 4, 5};
short int *ptrvec;
short int x;
short int array2[] = {1, 2, 2, 4, 5, 1, 2};

int main() {
  x = 5;
  ptrvec = array;
  int result = exists();
  printf("Existem duplicados? %d\n", result);

  x = 1;
  num = 7; 
  ptrvec = array2;
  result = exists();
  printf("Para %d Existem duplicados? %d\n",x,result);

  x=2;
  result = exists();
  printf("Para %d Existem duplicados? %d\n",x, result);
  x=4;
  result = exists();
  printf("Para %d Existem duplicados? %d\n",x,result);
  x=5;
  result = exists();
  printf("Para %d Existem duplicados? %d\n",x,result);


  ptrvec=array2;
  result = vec_diff();
  printf("Existem %d números diferentes \n", result);
  return 0;
}