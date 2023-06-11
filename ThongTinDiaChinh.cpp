#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#define N 20

typedef struct node
{
	int stt;
	char sothua[10];
	char hoten[20];
	int chieurong;
	int chieudai;
	int dientich;
	int xuatbangN;
}node;

typedef struct stack
{
	int top;
	node list[N];
}stack;

void khoitao(stack s)
{
	s.top=-1;
}
int empty(stack s)
{
	return s.top==-1?1:0;
}
int full(stack s)
{
	return s.top==-1?1:0;
}

void push(stack &s,node x)
{
	if(!full(s))
	s.list[++s.top]=x;
}
node pop(stack &s)
{
	node x;
	if(!empty(s))
	x=s.list[s.top--];
	return x;
}
/*
void xuatbang(node x)
{
	printf("|%5s|%-10s|%-20s|%10d|%10d|%10d|",x.stt,x.sothua,x.hoten,x.chieurong,x.chieudai,x.dientich);
}
void xuatbangN(node x,stack s,int n)
{system("cls");
printf("\n\n|-----------------------------------------------------------------\n");
	 printf("| stt | so thua  |       ho ten       |chieu rong| chieu dai| dien tich|");
	
	for(int i=0;i<n;i++)
		{
   printf("\n|-----|----------|--------------------|----------|----------|----------|\n");
		xuatbang(x);
		}
}*/
int main()
{
	int n;stack s;node x;
	int t1;char *t2;char *t3;int t4;int t5;int t6;
	printf ("\nNhap vao phan tu: ");
	scanf("%d",&n);
	khoitao(s);
	for(int i=0;i<n;i++)
	{
		printf("\nNhap so thu tu: ");
		scanf("%d",&x.stt);
		printf("\nNhap so thua: ");
		fflush(stdin);gets(x.sothua);
		printf("\nNhap ho ten: ");
		fflush(stdin);gets(x.hoten);
		printf("\nNhap chieu rong: ");
		scanf("%d",&x.chieurong);fflush(stdin);
		printf("\nNhap chieu dai: ");	
		scanf("%d",&x.chieudai);fflush(stdin);
		if((x.chieurong>0)&&(x.chieudai>0))
		{
			x.dientich=x.chieurong*x.chieudai;
			printf("\nDien tich la: %dm2",x.dientich);
		}
		else {printf ("\nChieu rong hoac chieu dai khong hop le.");}
		fflush(stdin);
		push(s,x);

	}
//	xuatbangN(x,s,n);

	


while(!empty(s))
	{
		x=pop(s);
	printf("\n|-----|----------|--------------------|----------|----------|----------|\n");
	printf("\n| stt | so thua  |       ho ten       |chieu rong| chieu dai| dien tich|\n");
	printf("\n||%5s|%-10s|%-20s|%10d|%10d|%10d|\n",x.stt,x.sothua,x.hoten,x.chieurong,x.chieudai,x.dientich);
	printf("\n|-----|----------|--------------------|----------|----------|----------|\n");
	}
}	

