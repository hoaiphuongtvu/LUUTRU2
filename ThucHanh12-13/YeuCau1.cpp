#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main()
	{FILE * fp;
		char filename(67), ch;
			printf( "Filename: " );
			gets (filename);
		if ((fp = fopen (filename, "w" )) == NULL )
			{	printf("khong the mo tap tin \n");
				exit (1)
			}
		while(( ch = getche() ) != '\r')
			puts( ch, fp );
		fclose (fp);
return 0;
	}
