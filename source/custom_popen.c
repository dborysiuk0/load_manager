#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

typedef struct {
    int pipe_fd[2];
    pid_t child_pid;
} PopenData;

FILE *custom_popen() {
    const char *command = "ls";
    const char *mode = "r";
    PopenData *data = malloc(sizeof(PopenData));

    // Create a pipe
    if (pipe(data->pipe_fd) == -1) {
        free(data);
        return NULL;
    }

    // Fork a child processs
    data->child_pid = fork();
    if (data->child_pid == -1) {
        free(data);
        return NULL;
    }

    if (data->child_pid == 0) {
        // Child process
        if (mode[0] == 'r') {
            // Close write end of the pipe in the child process
            close(data->pipe_fd[1]);
            // Duplicate read end of the pipe to stdin
            dup2(data->pipe_fd[0], STDIN_FILENO);
            // Close original read end of the pipe
            close(data->pipe_fd[0]);

        // Execute the command in the child process
        execlp("/bin/sh", "sh", "-c", command, NULL);
        // If execlp fails, exit the child process
        exit(1);
        }
    }
}
int custom_pclose(FILE *stream) {
    PopenData *data = (PopenData *)stream;

    // Close the file stream
    fclose(stream);

    // Wait for the child process to exit
    int status;
    waitpid(data->child_pid, &status, 0);

    // Free the PopenData structure
    free(data);

    // Return the child process exit status
    return WEXITSTATUS(status);
}