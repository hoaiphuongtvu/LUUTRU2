
	import java.util.Scanner;

	public class Circle {
	    private double radius; // Thuộc tính bán kính

	    // Getter và Setter cho bán kính
	    public double getRadius() {
	        return radius;
	    }

	    public void setRadius(double radius) {
	        this.radius = radius;
	    }

	    // Phương thức tính diện tích hình tròn
	    public double calculateArea() {
	        return Math.PI * radius * radius;
	    }

	    // Phương thức tính chu vi hình tròn
	    public double calculatePerimeter() {
	        return 2 * Math.PI * radius;
	    }

	    public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);

	        // Nhập bán kính từ người dùng
	        System.out.println("Nhập bán kính của hình tròn: ");
	        double radius = scanner.nextDouble();

	        // Tạo đối tượng Circle
	        Circle circle = new Circle();
	        circle.setRadius(radius);

	        // Hiển thị bán kính
	        System.out.println("Bán kính của hình tròn: " + circle.getRadius());

	        // Tính và hiển thị diện tích
	        double area = circle.calculateArea();
	        System.out.println("Diện tích của hình tròn: " + area);

	        // Tính và hiển thị chu vi
	        double perimeter = circle.calculatePerimeter();
	        System.out.println("Chu vi của hình tròn: " + perimeter);

	        scanner.close();
	    }
	}
