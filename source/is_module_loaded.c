#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "is_module_loaded.h"
#include "custom_popen.h"

int is_module_loaded(const char *module_name) {
    //change popen 
    FILE* fp = custom_popen();
    if (!fp) {
        return -1; // Error opening pipe
    }
    char line[256];
    while (fgets(line, sizeof(line), fp)) {
        char* tok = strtok(line, " \t\n");
        if (strcmp(tok, module_name) == 0) {
            custom_pclose(fp);
            return 1; // Module found
        }
    }
    custom_pclose(fp);
    return 0; // Module not found
}