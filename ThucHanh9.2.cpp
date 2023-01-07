#include <stdio.h>
#include <conio.h>
#include <string.h>
#include<ctype.h>
#include<cstdlib>

void chuanhoa(char s[50]);
void demkt(char s[50]);

int main()
{
	char s[50],s2[50];
{ char s[50], s2[50], key;
while(true)
{
	system("cls");
	printf ("**************************************************\n");
	printf ("**		THAO TAC VOI CHUOI		**\n");
	printf ("**	1. Nhap va chuan hoa chuoi		**\n");
	printf ("**	2. Dem ky tu				**\n");
	printf ("**	0. Thoat				**\n");
	printf ("**************************************************\n");
fflush(stdin);
printf("\n \t\t AN PHIM CHON: ");
scanf("%d",&key);
switch(key)
{
	case 1:
	fflush(stdin);
	printf("\nNhap chuoi :");
	gets(s);
	chuanhoa(s);
	printf("\nChuoi chuan hoa: ");
	puts(s);
	printf("\nBam phim bat ky de tiep tuc!");
	getch();
	break;
	case 2:
	chuanhoa(s);
	puts(s);
	demkt(s);
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


int xoa(char s[90],int vitrixoa)
{
	int n=strlen(s);
	for (int i=vitrixoa;i<n;i++)
	s[i]=s[i+1];
	s[n-1]='\0';
}
int xoakt(char s[50])
{
	for(int i=0;i<strlen(s);i++)
	if(s[i]==' '&& s[i+1]==' ')
	{
		xoa(s,i);
		i--;
	}
	
	if(s[0]==' ')
	xoa(s,0);
	if(s[strlen(s)-1]==' ')
	xoa(s,strlen(s)-1);
}
void chuanhoa(char s[50])
{
	int i=0;
	strlwr(s);
	xoakt(s);
	s[0]=s[0]-32;
	for(int i=0;i<strlen(s);i++)
	{
		if(s[i]==' '&& s[i+1]!=' ')
		s[i+1]=s[i+1]-32;
	}
}

void demkt(char s[50])
{
	int demkytu=0;
	int demtu=0;
	char c,c1;
	printf("\nNhap mot ky tu:");
	scanf("%c",&c);
	gets(s);
	fflush(stdin);
	strupr(s);
	for(int i=0;i<strlen(s);i++)
	{
		if(s[i]==toupper(c))
		demkytu++;
	}
	printf("\nSo ky tu %d",demkytu);
}
