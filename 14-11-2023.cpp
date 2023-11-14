#include<stdio.h>
#include<stdlib.h>
int a[10][10],n;
void docfile()
{
	FILE*f;
	f=fopen("D:\\TXT.txt","r");
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
	printf("Ma tran ke: \n");
	for(int i=1;i<=n;i++)
	{
		for(int j=1;j<=n;j++)
		
		printf("%d",a[i][j]);
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
int bacvohuong(int a[10][10],int n,int x)
{
        int bacvh=0;
		for(int j=1;j<=n;j++)
		{
		  	bacvh=bacvh+a[x][j];
		  
		 
       }
        if(a[x][x]!=0)
		  {
		  	bacvh=bacvh+a[x][x];
		  }
       printf("bac cua dinh %d la %d ",x,bacvh);
   }
int baccohuong(int a[10][10],int n,int x)
{
    int bacvao=0;
    int bacra=0;
    for(int j=1;j<=n;j++)
	{
			bacvao=bacvao+a[j][x];
			bacra=bacra+a[x][j];
		}
		printf("\n bac vao dinh %d la %d ",x,bacvao);
			printf("\n bac ra dinh %d la %d ",x,bacra);
			}
int main()
{
	docfile();
	
	infile();
	int x;
	
	printf("nhap x: ");
	scanf("%d",&x);
if (ktdx(a,n)==1)
	{		
	printf("Do thi vo huong");
		bacvohuong(a,n,x);
	}
	else
	{
		printf("Do thi co huong");
		baccohuong(a,n,x);
	}
}
