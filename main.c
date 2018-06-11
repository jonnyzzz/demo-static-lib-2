#include "lib-b.h"
#include <stdio.h>

int main(int arg, char** argv) {

  int z  = lib_b_foo();

  printf("The result is %d", z);

}


