#include <stdio.h>

int main(void)
{
    char buf[16];
    printf("Enter input: ");
    gets(buf);
    printf("%s\n", buf);
    return 0;
}
