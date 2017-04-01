#include <stdio.h>

int main(int argc, char *argv[])
{
    if (argc != 0) {
        printf("Seems like I still have some arguments! Not allowed!\n");
        int i;
        for (i = 0; i < argc; i++) {
            printf("%s\n", argv[i]);
        }
        return 1;
    }
    printf("Yaay! You didn't give any arguments!\n");
    printf("The flag is flag{source_code}\n");
    return 0;
}
