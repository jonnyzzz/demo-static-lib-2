#!/bin/bash

set -e -x -u

rm -rf *-build *.o *.a *.klib *exe | true

gcc -c "-I$(pwd)" lib-a.c -o lib-a.o
ar rcs lib-a.a lib-a.o



gcc -c "-I$(pwd)" lib-b.c lib-a.a -o lib-b.o
ar rcs lib-b.a lib-b.o



gcc -c main.c -o main.o


## the fix is to call `clang -mmacosx-version-min=10.10` instead.
ld  -lc  main.o lib-b.a


