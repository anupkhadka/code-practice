/*
 * This class reads a file, and writes the content to another file,
 * essentially simulating a copy function
 */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    FILE *ifp, *ofp; 
    char buffer[255];

    if(argc < 3) {
        fprintf(stderr,"Usage: ./a.out <source> <destination>\n");
    }
    
    ifp = fopen(argv[1], "r");
    ofp = fopen(argv[2], "w+");
    
    if(ifp == NULL) {
        fprintf(stderr, "Error opening file: %s for read", argv[1]);
    } else if(ofp == NULL) {
        fprintf(stderr, "Error opening file: %s for write", argv[2]);
    } else {
        while(fgets(buffer, sizeof(buffer), ifp) != NULL) {
            fprintf(ofp, "%s", buffer);
        }
    }

    fclose(ifp);
    fclose(ofp);
    exit(0);
}
