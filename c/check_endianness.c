#include <stdio.h>
const int i = 1;
#define is_bigendian() ( (*(char *)&i) == 0)

int main(void) {
    int val;
    if (is_bigendian()) {
        printf("System is big-endian\n");
    } else {
        printf("System is little-endian\n");
    }
}
