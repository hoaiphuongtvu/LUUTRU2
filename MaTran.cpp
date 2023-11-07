#include<stdio.h>
#include<stdlib.h>

int a[10][10],n;
void docfile()
{
	FILE*f;
	f=fopen("mtk.txt","r");
	if(f==NULL)
	{
		printf("khong tim thay tap tin");
		exit(0);
	}
	else{
		fscanf(f,"%d",&n);
		for(int i=1;i<=n;i++)
		for(int j=1;j<=n;j++)
		fscanf(f,"%d",&a[i][j]);

}
	fclose(f);
}
	
void infile()
{
	printf("Ma tran ke:\n");
	for (int i=1;i<=n;i++)
	{
		for (int j=1;j<=n;j++)
		printf("%2d",a[i][j]);
		printf("\n");
	}
}
int ktdx(int a[10][10],int n)
{
	for(int i=1;i<=n;i++)
	{
		for(int j=1;j<=n;j++)
		{
			if(a[i][j]!=a[j][i])
			{
				return 0;
			}
			
		}
	}
	return 1;
}
int ktddt (int a[10][10],int n)
{
	for(int i=1;i<=n;i++)
	{
		for(int j=1;j<=n;j++)
	{
		if (a[i][j]>1)
		{
			return 0;
		}
		
	}
}
return 1;
}
int ktgdt (int a[10][10], int n)
{
	for(int i=1;i<=n;i++)
	{
		if(a[i][i]!=0)
		{
			return 1;
		}
	
}
return 0;
}
int main()
{
	docfile();
	infile();
	if (ktdx(a,n)==1)
	{
		if(ktgdt(a,n)==1)
		{
			printf(" Ma tran la: Gia do thi!");
		}
		else
		{
		 if(ktddt(a,n)==1)
			{
				printf("Ma tran la: Don do thi vo huong!");
			}
		else
			{
				printf("Ma tran la: Da do thi vo huong!");
			}
		}
	}
	else
	{
		 if(ktddt(a,n)==1)
		{
			printf("Ma tran la: Don do thi co huong!");
       }
       else
       {
       	printf("Ma tran la: Da do thi co huong!");
       }
   }
}


