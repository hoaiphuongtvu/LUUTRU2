#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main()
	{FILE * fp;
		char filename(67), ch;
			printf("Nhap duong dan tap tin: ");
			gets (filename);
			
		if ((fp = fopen (filename, "r" )) ==NULL)
			{	printf("khong the mo tap tin \n");
				exit(1)
			}
			
		while(( ch = getc(fp)) !=EOF )
			printf ("%c",ch);
		fclose (fp);
return 0;
	}
