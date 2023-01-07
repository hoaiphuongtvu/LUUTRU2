#include <stdio.h>
#include <conio.h>
#include <string.h>
#include<ctype.h>
#include<cstdlib>

void nhap2c (int a[50][50], int m, int n)
{

    for(int i=0;i<m;i++)
     {
	    for(int j=0;j<n;j++)
	    {
		   printf("\nNhap a[%d][%d]=",i,j); scanf("%d",&a[i][j]);
		}
	 }
}


void xuat2c (int a[50][50], int m, int n)
{
     for(int i=0;i<m;i++)
     {
	    for(int j=0;j<n;j++)
	    {
		   printf("   %d   ",a[i][j]);
		   
		}
		printf("\n\n");
	 }
}


void sx(int a[50][50], int m, int n)
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
	 


int main()
{
	int a[50][50];
	int m,n;

{ char s[50], s2[50], key;
while(true)
{
	system("cls");
	printf ("**********************************************************\n");
	printf ("**		THAO TAC TREN MANG			**\n");
	printf ("**	1. Nhap, xuat mang 2 chieu			**\n");
	printf ("**	2. Sap xep mang tanng dan			**\n");
	printf ("**	3. Tong cac so nguyen to chia het cho 3		**\n");
	printf ("**	0. Thoat					**\n");
	printf ("**********************************************************\n");
fflush(stdin);
printf("\n \t\t AN PHIM CHON: ");
scanf("%d",&key);
switch(key)
{
	case 1:
	fflush(stdin);
	printf ("\nNhap so dong m: ");  scanf("%d",&m);
	printf ("\nNhap so cot n: ");  scanf("%d",&n);
	nhap2c (a,m,n);
	xuat2c (a,m,n);
	printf("\nBam phim bat ky de tiep tuc!");
	getch();
	break;
	case 2:
	sx (a,m,n);
	printf("\nBam phim bat ky de tiep tuc!");
	getch();
	break;
	case 3:
	printf("\nBam phim bat ky de tiep tuc!");
	getch();
	break;
	case 0:
	exit(1);
	default:
	printf("\nKhong co chuc nang nay!");
	printf("\nBam phim bat ky de tiep tuc!");
	getch();
	break;
}
}
}
}


