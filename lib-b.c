#include "lib-b.h"
#include "lib-a.h"


int lib_b_foo() {

  return 42 + lib_a_foo();

}


