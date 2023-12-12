#include <stdio.h>
int a[10][10], n;
// Hàm d?c ma tr?n t? file
void docfile() {
    // M? file "matran.txt" d? d?c
    FILE *f = fopen("D:\\TXT.txt", "r");
    
    // Ki?m tra xem file có t?n t?i không
    if (f == NULL) {
        printf("Khong the mo file.");
    } else {
        // ??c kích thu?c c?a ma tr?n
        fscanf(f, "%d", &n);

        // cac các phan tu cua ma tran tu file
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n; j++) {
                fscanf(f, "%d", &a[i][j]);
            }
        }

        // ?óng file sau khi d?c xong
        fclose(f);
    }
}

// Hàm in ma tran ra màn hinh
void in() {
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            printf(" %2d ", a[i][j]);
        }
        printf("\n");
    }
}
void DFS(int a[10][10], int n)
{
	int s[10], d[10], x,t= 0,k=0;
	 
	 for(int i = 1 ; i<=n; i++)
	 {
	 	d[i]=0;
	 }
	 printf("\n nhap dinh duyet: ");
	 scanf("%d",&x);
	 
	 s[0]=x;
	 t++;
	 while(t>0){
	 	k=s[t-1];
	 	t--;
	 	
	 	if(d[k]==0)
	 	{
	 		printf(" %d ",k);
	 		d[k] = -1;
	 		
		}
		
		for(int i = n ;i >= 1; i--)
		{
			if(a[i][k] !=0 && d[i] == 0)
			{
				s[t] = i;
				t++;
			}
		}
	 }
}
void BFS(int a[10][10], int n)
{
	int s[10], d[10], x= 0, v= 0,t =0;
		for(int i=1;i<=n;i++)
	{
		d[i] = 0;
	}
	
	printf("\n nhap dinh can duyet: ");
	scanf("%d",&v);
	
	s[0] = v;
	t++;
	d[v] = -1; 
	
	while(t>0)
	{
		x = s[0];
		printf(" %d ",x);
		
		for(int i =0;i <n;i++)
		{
			s[i] = s[i+1];
		}
		t--;
			for(int i = 1 ; i<=n ; i++)
			{
				if((a[i][x] != 0) && d[i]==0){
				s[t] = i;
				d[i] = -1;
				t++;
			}
		}
		
	}
}
void TimDinhTreo(int a[10][10], int n){
    int dinhTreo[10], soDinhTreo = 0;
    for(int i=1; i<=n; i++){
        int ke = 0;
        for(int j=1; j<=n; j++){
            if(a[i][j] != 0){
                ke++;
            }
        }
        if(ke == 1){
            dinhTreo[soDinhTreo++] = i;
        }
    }
    if(soDinhTreo > 0){
        printf("\nCac dinh treo la: ");
        for(int i=0; i<soDinhTreo; i++){
            printf("%d ", dinhTreo[i]);
        }
    } else {
        printf("\nKhong co dinh treo nao trong do thi.");
    }
}
int main()
{

	docfile();
	in();
	DFS(a,n);
	BFS(a,n);
	TimDinhTreo(a,n);
}
