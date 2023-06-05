#define _GNU_SOURCE
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include "insmod.h"
#include <string.h>
#include <errno.h>

#define init_module(module_image, len, param_values) syscall(__NR_init_module, module_image, len, param_values)
#define finit_module(fd, param_values, flags) syscall(__NR_finit_module, fd, param_values, flags)

int insmod(char *argv) {
    const char *params = "";
    int fd;

    fd = open(argv, O_RDONLY);
    if (finit_module(fd, params, 0) != 0) {
        close(fd);
        return -1;       
    }
    close(fd);

    return 1;
}