#include <stdio.h>
#include <conio.h>


	void nhapmang(int a[], int n)
{
	for(int i=0;i<n;i++)
	{
		printf ("\nNhap phan tu thu a[%d]: ",i);
		scanf ("%d",&a[i]);
	}
}

	void xuatmang(int a[], int n)
{
	printf ("\nMang vua nhap la: ");
	{
		for(int i=0;i<n;i++)
		printf ("%5d",a[i]);
	}
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

	void snt(int a[], int n)
{
	for(int i=0; i<n ; i++)
		{
			 if (ktnt(a[i])==1)
			  printf("\n%d la so nguyen to",a[i]);
 	          else
 	          printf("\n%d khong phai la so nguyen to ",a[i]);
		}
}

	void tongsnt(int a[], int n)
{
	int s=0;
	for(int i=0; i<n ; i++)
		{
			 if (ktnt(a[i])==1)
				s+=a[i];	 
		}
	 printf("\nTong cac so nguyen to la %d",s);
}

	void swap(int &a, int &b)
{
	int temp= a;
	a = b;
	b = temp;
}

	void sapxep (int a[],int n)
{
	{
	
	int i,j;
	int left=0;
	int right=n-1;
	int k=0;
	while (left<right)
	{
		for (i=right;i>left;i--)
		{
			if (a[i]<a[i-1])
			{
				swap (a[i],a[i-1]);
				k=i;
			}
		}
		left=k;
		for (int j=left;j<right;j++)
		{
			if (a[j]>a[j+1])
			{
				swap (a[j],a[j+1]);
				k=j;
			}
		}
		right=k;
	}
	printf ("\nMang sau khi sap xep la:\n\n ");
	for (int i=0;i<n;i++)
	{
		printf ("%5d",a[i]);
	}
	}
}

	int timkiem (int a[],int n,int x)
{
	printf("\nNhap gia tri can tim: ");
	scanf("%d",&x);
	int i=0;
	a[n]=x;
	while (a[i]!=x)
	i++;
	if (i==n)
	return -1;
	else
	return i;
}

int main()
{
	int a[10]; int n; int x;
	printf("\nNhap so phan tu:  ");
	scanf("%d",&n);
	nhapmang(a,n);
	xuatmang(a,n);
	snt(a,n);
    tongsnt(a,n);
	int result=timkiem(a,n,x);
	if (result == -1)
    printf("\nKhong tim thay so can tim trong mang",x);
	else
   	printf("\nSo can tim xuat hien tai vi tri so a[%d]",result);
    sapxep(a,n);
return 0;
}
