/* 
 * This program is a simplified implementation of linux's "ls" command
 */

#include <dirent.h>
#include <stdio.h>
#include <string.h>

#define MAX_DIR_PATH_LEN 256

int main(int argc, char *argv[]) 
{
    DIR *dir;
    struct dirent *file;
    char dirName[MAX_DIR_PATH_LEN];
    memset(dirName, '\0', sizeof(dirName)); 

    if(argc <= 1 ) {
        strcpy(dirName, ".");
    } else {
        strcpy(dirName, argv[1]);
    }
    
    if((dir = opendir(dirName))) {
        while((file = readdir(dir))) {
            printf("%s\n", file->d_name);
        }
    }
    closedir(dir);
}	
