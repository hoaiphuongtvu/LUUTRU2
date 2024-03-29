
	import java.util.Scanner;

	public class QuadraticEquation {
	    private double a;
	    private double b;
	    private double c;

	    // Constructors
	    public QuadraticEquation() {
	    }

	    public QuadraticEquation(double a, double b, double c) {
	        this.a = a;
	        this.b = b;
	        this.c = c;
	    }

	    // Getter và Setter cho a, b, c
	    public double getA() {
	        return a;
	    }

	    public void setA(double a) {
	        this.a = a;
	    }

	    public double getB() {
	        return b;
	    }

	    public void setB(double b) {
	        this.b = b;
	    }

	    public double getC() {
	        return c;
	    }

	    public void setC(double c) {
	        this.c = c;
	    }

	    // Phương thức tính delta
	    public double calculateDelta() {
	        return b * b - 4 * a * c;
	    }

	    // Phương thức tính nghiệm của phương trình bậc 2
	    public void calculateRoots() {
	        double delta = calculateDelta();

	        if (delta > 0) {
	            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
	            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
	            System.out.println("Phương trình có 2 nghiệm phân biệt:");
	            System.out.println("x1 = " + x1);
	            System.out.println("x2 = " + x2);
	        } else if (delta == 0) {
	            double x = -b / (2 * a);
	            System.out.println("Phương trình có nghiệm kép:");
	            System.out.println("x = " + x);
	        } else {
	            System.out.println("Phương trình không có nghiệm thực.");
	        }
	    }

	    public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);

	        // Nhập các hệ số từ người dùng
	        System.out.println("Nhập hệ số a: ");
	        double a = scanner.nextDouble();

	        System.out.println("Nhập hệ số b: ");
	        double b = scanner.nextDouble();

	        System.out.println("Nhập hệ số c: ");
	        double c = scanner.nextDouble();

	        // Tạo đối tượng phương trình bậc 2 và thiết lập hệ số
	        QuadraticEquation equation = new QuadraticEquation(a, b, c);

	        // Tính và hiển thị delta và nghiệm của phương trình
	        double delta = equation.calculateDelta();
	        System.out.println("Delta của phương trình: " + delta);
	        equation.calculateRoots();

	        scanner.close();
	    }
	}

