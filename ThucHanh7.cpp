#include <stdio.h>
#include <stdlib.h>

void nhap1c(int *a, int n);
void xuat1c(int *a, int n);
void giatriln(int *a, int n);
void ttich(int *a, int n);
void snt(int *a, int n);
void tongsnt(int *a, int n);
void gtbx(int a[], int n);
int main()
{   
	int *a, n, m;
	a=(int*)calloc(25,sizeof(int));
	printf("\nNhap so phan tu:  ");
	scanf("%d",&n);
	nhap1c(a,n);
	xuat1c(a,n);
	giatriln(a,n);
	ttich(a,n);
	snt(a,n);
    tongsnt(a,n);
    gtbx(a,n);
}

void nhap1c(int *a, int n)
{
	for(int i=0;i<n;i++)
    {
	printf("\nNhap gia tri a[%d]=",i);
	scanf("%d",&a[i]);
    }
}

void xuat1c(int *a, int n)
{
	printf("\nCac gia tri vua nhap la:\n");
	{
	for(int i=0;i<n;i++)
	printf("a[%d] = %d\n",i,a[i]);
	}
}  
  
void giatriln(int *a, int n) 
{ 
	int max=0;
  	for(int i=0;i<n;i++)
  	{if(a[i]>=max)
  	max=a[i];
  	}
     printf("\nPhan tu lon nhat la %d",max);
}

void ttich(int *a, int n)
{int tich=1;
	for(int i=0;i<n;i++)
	{
		tich=tich*a[i];
	}
	printf("\nTich cac ptu la: %d  ",tich);
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
void snt(int *a, int n)
{
	for(int i=0; i<n ; i++)
		{
			 if (ktnt(a[i])==1)
			  printf("\n%d la so nguyen to",a[i]);
 	          else
 	          printf("\n%d khong phai la so nguyen to ",a[i]);
		}
}
void tongsnt(int *a, int n)
{
	int s=0;
	for(int i=0; i<n ; i++)
		{
			 if (ktnt(a[i])==1)
				s+=a[i];	 
		}
	 printf("\nTong cac so nguyen to la %d",s);
}

void gtbx(int *a, int n)
  {
  	int x,y=0;
     printf("\n nhap gtri x =");
     scanf("%d",&x);
 	for(int i=0; i<n ; i++) 
	    {
	    
	     	if(a[i]==x) 
	     	{
	     	   printf("\n GIA TRI BANG a[%d]",i);
	     	 
	     	   y++;
	     	}
		
	    }
     if (y==0) printf("\n\nKhong gia tri nao trong mang bang x") ;
     
 }
 
