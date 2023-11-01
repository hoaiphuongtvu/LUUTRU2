import java.util.Scanner;
public class nguyenduong{
	public static void main(String[]args){
	Scanner scanner= new Scanner(System.in);
	System.out.print("Nhap vao so nguyen duong n: ");
	int n = scanner.nextInt();
while(n<=0)
	{
		System.out.print("Nhap lai so phan tu (>0)!");
		n = scanner.nextInt();
	}
	int sum = 0;
	for (int i=1;i<+n;i++){
		sum +=i;
	}
	System.out.print("Tong tu 1 den n: "+sum);
}
}

