#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void exec_it(char* cmd)
{
	system(cmd);
}

void check_it(char* string)
{
	char* bin = "/bin";
	char* sh = "sh";

	/*
	for(; string != NULL; string++)
	{
		if (string == bin)
		{
			printf("Not that simple!\n");
			exit(0);
		}
	}
	*/

	
	if (strstr(string, bin) || strstr(string, sh))
	{
		printf("Not that simple!\n");
		exit(0);
	}

	exec_it(string);
}

int main()
{
	char* exec = (char*)malloc(10);
	fgets(exec, 10, stdin);
	
	check_it(exec);
	
	free(exec);
	return 0;
}
