#include <stdio.h>
#include <stdlib.h>

int a[10][10], n;
int d[10]; 

void docfile() {
    FILE *f;
    f = fopen("D:\\TXT.txt", "r");
    if (f == NULL) {
        printf("Khong tim thay tap tin");
        exit(0);
    } else {
        fscanf(f, "%d", &n);
        for (int i = 1; i <= n; i++)
            for (int j = 1; j <= n; j++)
                fscanf(f, "%d", &a[i][j]);
    }
    fclose(f);
}

void infile(){
 printf("Ma tran ke: \n");
 for(int i=1;i<=n;i++)
 {
  for(int j=1;j<=n;j++)
  
  printf("%d ",a[i][j]);
  printf("\n");
}
}

void DFS(int x) {
    int S[10]; 
    int top = 0; 

    S[top] = x;
    d[x] = 1; 
    printf("%d ", x);

    while (top >= 0) {
        int kq = S[top];
        int found = 0; 

        for (int i = 1; i <= n; i++) {
            if (a[kq][i] == 1 && d[i] == 0) {
                S[++top] = i;
                d[i] = 1; 
                printf("%d ", i);
                found = 1;
                break; 
            }
        }

        if (!found) {
            top--; 
        }
    }
}

int main() {
    docfile();
 infile();
     int x;
 printf("Nhap dinh can duyet x = ");
    scanf("%d", &x);

 if (x >= 1 && x <= n) {
        printf("Ket qua duyet DFS(%d) la: ", x);
        for (int i = 1; i <= n; i++) {
            d[i] = 0; 
        }
        DFS(x);
    } else {
        printf("Dinh khong hop le\n");
    }

    return 0;
}
