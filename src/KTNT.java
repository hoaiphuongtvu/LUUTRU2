	import java.util.Scanner;
public class KTNT {

	    public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);

	        // Nhập số từ người dùng
	        System.out.println("Nhập vào một số nguyên dương: ");
	        int number = scanner.nextInt();

	        // Gọi hàm kiểm tra số nguyên tố
	        boolean isPrime = checkPrime(number);

	        // Hiển thị kết quả
	        if (isPrime) {
	            System.out.println(number + " là số nguyên tố!");
	        } else {
	            System.out.println(number + " không phải là số nguyên tố!");
	        }

	        scanner.close();
	    }

	    // Hàm kiểm tra số nguyên tố
	    public static boolean checkPrime(int n) {
	        if (n <= 1) {
	            return false;
	        }
	        for (int i = 2; i <= Math.sqrt(n); i++) {
	            if (n % i == 0) {
	                return false;
	            }
	        }
	        return true;
	    }
	}

