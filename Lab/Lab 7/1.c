#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    char d[50];
    if (argc == 2)
    {
        bzero(d, sizeof(d));
        strcat(d, "ls -i ");
        strcat(d, argv[1]);
        system(d);
    }
}