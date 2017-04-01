#include<stdio.h>

int main()
{
	int arr[100];
	char check = NULL;
	arr[0] = 0;
	printf("Enter 5 elements:\n");
	for (int i=0; check != '\n' ; i++)
	{
		scanf("%d", &arr[i]);
		check = getchar();
	}

	if (arr[5] == 1337)
		system("cat flag");
	
	return 0;
}
