#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "is_module_loaded.h"

int is_module_loaded_auxiliary(char *module_name) { 
    FILE* fp = popen("lsmod", "r");
    if (!fp) {
        return -1; // Error opening pipe
    }
    char line[256];
    while (fgets(line, sizeof(line), fp)) {
        char* tok = strtok(line, " \t\n");
        if (strcmp(tok, module_name) == 0) {
            pclose(fp);
            return 1; // Module found
        }
    }
    pclose(fp);
    return 0; // Module not found
}

int is_module_loaded(int argc, char **argv) {
    if (argc != 2){ // Exit if incorrect parameter
        fprintf(stderr, "Incorrect parameter"); 
        exit(1);
    }
    int result = is_module_loaded_auxiliary(argv[1]); 
    if (result == -1) {
        printf("Error opening pipe to lsmod\n");
        return -1;
    } else if (result == 1) {
        printf("Module %s is loaded\n", argv[1]);
    } else {
        printf("Module %s is not loaded\n", argv[1]);
    }
    return 0;
}
