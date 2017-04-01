#include<stdio.h>
#include<stdlib.h>

int main()
{
	char buf[32];
	int check;
	printf("Enter your input here: \n");
	scanf("%s", buf);
	if (check == 0xdeadface)
	{
		system("/bin/sh");
	}
	return 0;
}
