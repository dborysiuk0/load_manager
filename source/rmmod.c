#define _GNU_SOURCE
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include "rmmod.h"

#define delete_module(name, flags) syscall(__NR_delete_module, name, flags)

int rmmod(char **argv) {
    if (sizeof(argv) != 2) {
        return -1; // Incorect parametr
    }
    if (delete_module(argv[1], O_NONBLOCK) != 0) {
        return 0; 
    }
    return 1; // Succeed
}