#include <stdio.h>
#include <stdlib.h>
int Nhap2c(int **a, int m, int n);
int Xuat2c(int **a, int m, int n);
int PhanTuLonNhat(int **a, int m, int n);
int PhanTuNhoNhat(int **a, int m, int n);
int snt(int **a,int m,int n);
int tongsnt(int **a, int m,int n);
int gtbx(int **a, int m, int n);
int sx(int **a, int m, int n);
double Tong(int **a, int m, int n);

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
    printf("\nPhan tu nho nhat la %d\n", PhanTuNhoNhat(a, m, n));
    snt(a, m, n);
    tongsnt(a, m, n);
    gtbx(a, m, n);
    sx(a, m, n);
    double kq=Tong(a,m,n);
	printf("\nTong cac phan tu tren duong cheo chinh %8.2f",kq);
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
	 printf("\n\nTong cac so nguyen to la %d",s);
}
int gtbx(int **a, int m, int n)
{
  	int x,y=0;
     printf("\nNhap gtri x can tim: ");
     scanf("%d",&x);
 	for(int i=0; i<m ; i++) 
	    {
	    	for(int j=0; j<n;j++)
	     	if(a[i][j]==x) 
	     	{
	     	   printf("\nGia tri can tim tai vi tri a[%d][%d]",i,j);
	     	 
	     	   y++;
	     	}
		
	    }
     if (y==0) printf("\n\nKhong gia tri nao trong mang bang x") ;
     
}
int sx(int **a,int m,int n)
{
  int i,j;
  float tg;
  float mangtg[m*n];
  for(i=0; i<m*n; i++)
  {
    mangtg[i]=a[i/n][i%n];
  }
  for(i=0; i<m*n-1; i++){
    for(j=m*n-1; j>i; j--){
      if(mangtg[i]>mangtg[j]){
        tg=mangtg[i];
        mangtg[i]=mangtg[j];
        mangtg[j]=tg;
      }
    }
  }
  for(i=0; i<m*n; i++){
    a[i/n][i%n]=mangtg[i];
  }
  printf("\nMang da sap xep la: \n");
  for (i = 0; i < m; i++)
    {
        for (j = 0; j < n; j++)
            printf("%5d", a[i][j]);
        printf("\n");
    }
}
double Tong(int **a, int m,int n)
{
	double sum=0;
	for(int i=0;i<n;i++)
	{
		for(int j = 0; j < n ; j++)
		{
			if (i==j)
		sum=sum+a[i][j];
		}
	}
	return sum;
}
