#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    char d[50];
    if (argc == 3)
    {
        bzero(d, sizeof(d));
        strcat(d, "ls -i ");
        strcat(d, argv[1]);
        strcat(d, " >> ");
        strcat(d, argv[2]);
        system(d);

        printf("Using ls -i on given dir and redirecting output to %s", argv[2]);
    }
}