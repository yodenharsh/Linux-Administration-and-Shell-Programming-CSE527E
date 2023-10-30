#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <time.h>
int main(int argc, char *argv[])
{
    for (int i = 0; i < argc - 1; i++)
    {
        char d[50];
        int j = i + 1;

        struct stat sb;

        if (stat(argv[j], &sb) == -1)
        {
            perror("stat");
            exit(EXIT_FAILURE);
        }
        printf("File name: %s\n", argv[j]);
        printf("File type: ");

        switch (sb.st_mode & S_IFMT)
        {
        case S_IFBLK:
            printf("block device\n");
            break;
        case S_IFCHR:
            printf("character device\n");
            break;
        case S_IFDIR:
            printf("directory\n");
            break;
        case S_IFIFO:
            printf("FIFO/pipe\n");
            break;
        case S_IFLNK:
            printf("symlink\n");
            break;
        case S_IFREG:
            printf("regular file\n");
            break;
        case S_IFSOCK:
            printf("socket\n");
            break;
        default:
            printf("unknown?\n");
            break;
        }

        printf("I-node number: %ld\n", (long)sb.st_ino);

        printf("Mode: %lo (octal)\n",
               (unsigned long)sb.st_mode);

        printf("Link count: %ld\n", (long)sb.st_nlink);

        printf("File size: %lld bytes\n",
               (long long)sb.st_size);

        printf("Last file access: %s", ctime(&sb.st_atime));
        printf(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n");
    }
}