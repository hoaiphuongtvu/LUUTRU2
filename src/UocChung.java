	import java.util.Scanner;
public class UocChung {

	    public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);

	        // Nhập hai số từ người dùng
	        System.out.println("Nhập số thứ nhất: ");
	        int number1 = scanner.nextInt();

	        System.out.println("Nhập số thứ hai: ");
	        int number2 = scanner.nextInt();

	        int gcd = findGCD(number1, number2);
	        int lcm = (number1 * number2) / gcd;


	        System.out.println("Ước chung nhỏ nhất của " + number1 + " và " + number2 + " là: " + gcd);
	        System.out.println("Ước chung lớn nhất của " + number1 + " và " + number2 + " là: " + lcm);

	        scanner.close();
	    }

	    public static int findGCD(int a, int b) {
	        if (b == 0) {
	            return a;
	        }
	        return findGCD(b, a % b);
	    }
	}
