#include <stdio.h>
#include <stdlib.h>
int Nhap2c(int **a, int m, int n);
int Xuat2c(int **a, int m, int n);
int PhanTuLonNhat(int **a, int m, int n);
int PhanTuNhoNhat(int **a, int m, int n);
int snt(int **a,int m,int n);
int tongsnt(int **a, int m,int n);

int main()
{
    int **a, m, n;
    int i,j;
    
    printf("\nNhap vao so dong = ");scanf("%d", &m);
    printf("\nNhap vao so cot = ");scanf("%d", &n);
    printf("nhap vao ma tran:\n");
    a = (int **)calloc(25, sizeof(int *));
    for (i = 0; i < m; i++)
    {
        a[i] = (int *)calloc(25, sizeof(int));
    }
    Nhap2c(a, m, n);
    Xuat2c(a, m, n);
    printf("\nPhan tu lon nhat la %d", PhanTuLonNhat(a, m, n));
    printf("\nPhan tu nho nhat la %d", PhanTuNhoNhat(a, m, n));
    snt(a, m, n);
    tongsnt(a, m, n);
    return 0;
}

int Nhap2c(int **a, int m, int n)
{
    int i, j;
    for (i = 0; i < m; i++)
        for (j = 0; j < n; j++)
        {
            printf("a[%d][%d] = ", i, j);
            scanf("%d", &a[i][j]);
        }
}
int Xuat2c(int **a, int m, int n)
{
    int i, j;
    for (i = 0; i < m; i++)
    {
        for (j = 0; j < n; j++)
            printf("%5d", a[i][j]);
        printf("\n");
    }
}
int PhanTuLonNhat(int **a, int m, int n)
{
   int max = **a;
   for(int i = 0; i < m; i++)
      for(int j = 0; j < n; j++)
         if(a[i][j]>max)
            max = a[i][j];
   return max;
}
int PhanTuNhoNhat(int **a, int m, int n)
{
	int min = **a;
	for(int i = 0; i < m; i++)
		for(int j=0; j<n; j++)
			if(min>a[i][j])
				min = a[i][j];
	return min;
}
bool ktnt(int a)	
{
	  int dem=0;
 	    for(int i=1;i<=a;i++)
 	      {
 	          if(a%i==0)
 	           dem++;
 	    	}
 	         if(dem==2)
			return 1;
			else return 0;	
}

int snt(int **a,int m,int n)
{
	for(int i=0; i<n ; i++)
	{
		for(int j=0;j<n;j++)
		if (ktnt(a[i][j])==1)
			  printf("\n%d la so nguyen to",a[i][j]);
 	          else
 	          printf("\n%d khong phai la so nguyen to ",a[i][j]);
	}
}
int tongsnt(int **a, int m,int n)
{
	int s=0;
	for(int i = 0; i < n ; i++)
		{
			for(int j = 0; j < n ; j++)
			 if (ktnt(a[i][j])==1)
				s+=a[i][j];	 
		}
	 printf("\nTong cac so nguyen to la %d",s);
}
