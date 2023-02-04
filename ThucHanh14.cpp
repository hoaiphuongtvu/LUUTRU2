#include<stdio.h>
#include<conio.h>
#include<string.h>

int fibonacci (int n)
{
	if (n<0)
	{
		return -1;
	}
	else if (n==0 || n==1)
	{
		return n;
	}
	else
	{
		return fibonacci(n-1) + fibonacci(n-2);
	}
}

long tinhgiaithua(int n)
{
	if (n>0)
	{
		return n*tinhgiaithua(n-1);
	}
	else
	{
		return 1;
	}
}

int tongN(int n)
{
	int tinhtong;
	if(n==1)
	{
		return (1);
	}
	else
	{
		tinhtong= n+tongN(n-1);
	}
	return (tinhtong);
}

int main()
{
	int i,n,tinhtongN;
	printf("10 so dau tien cua day so Fibonacci: \n");
		for (i=0;i<10;i++)
		{
			printf("%d",fibonacci(i));
		}
	
	printf("\nNhap so nguyen duong n: ");
	scanf("%d",&n);
	printf("Giai thua cua %d la: %d \n",n,tinhgiaithua(n));
	
	printf("Nhap mot so nguyen duong: ");
	scanf("%d",&n);
	tinhtongN= tongN(n);
	printf("\nTong cac so tu mot toi %d la: %d",n,tinhtongN);
	
	return 0;
}


