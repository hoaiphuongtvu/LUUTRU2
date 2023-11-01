import java.util.Scanner;
public class timmax {
	public static void main(String[]args){
		int num1,num2,num3,num4;
		Scanner scanner = new Scanner(System.in);
		System.out.println("Nhap so thu I: ");
		num1 = scanner.nextInt();
		System.out.println("Nhap so thu II: ");
		num2 = scanner.nextInt();
		System.out.println("Nhap so thu III: ");
		num3 = scanner.nextInt();
		System.out.println("Nhap so thu IV : ");
		num4 = scanner.nextInt();
		if(num1>=num2 && num1>=num3 && num1>=num4)
			System.out.println(num1+"La so lon nhat!");
		else if(num2>=num1 && num2>=num3 && num2>=num4)
			System.out.println(num2+"La so lon nhat!");
		else if(num3>=num1 && num3>=num2 && num3>=num4)
			System.out.println(num3+"La so lon nhat!");
		else
		System.out.println(num4+"La so lon nhat!");
	}
}
