
#include <stdio.h>
#include <stdlib.h>


int main(){
    float x = 1.33;
    const int TEST = 3;
    int a = 3;
    double z = 2.444;
    long y = a + z;
    ++a;
    --a;
    if(a != z) {a = 3;}
    if(a == z) {a = 2;}
    printf("hello world");
    printf("#");
    return 0;
}


