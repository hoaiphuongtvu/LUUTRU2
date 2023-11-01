import java.util.Scanner;


public class sothuc {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
	    System.out.print("Nhap đo dai canh a: ");
	    double a = scanner.nextDouble();
	    System.out.print("Nhap đo dai canh b: ");
	    double b = scanner.nextDouble();
	    System.out.print("Nhap đo dai canh c: ");
	    double c = scanner.nextDouble();

	    if (kiemtra(a, b, c)) {
	    	String loaiTamgiac = getLoaiTamgiac(a, b, c);
	        System.out.println("Đay la mot tam giac " + loaiTamgiac);
	    } else {
	        System.out.println("Ba đo dai khong tao thanh mot tam giac.");
	    }
	}

	public static boolean kiemtra(double a, double b, double c) {
		return a + b > c && a + c > b && b + c > a;
	}

	public static String getLoaiTamgiac(double a, double b, double c) {
		if (a == b && b == c) {
			return "đeu";
	    } else if (a == b || a == c || b == c) {
	    	if (a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a) {
	    		return "vuong can";
	        } else {
	            return "can";
	        }
	    } else {
	    	if (a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a) {
	    		return "vuong";
	        } else {
	            return "thuong";
	        }
	     }
	}
}