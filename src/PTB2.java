
public class PTB2 {
	    private double a;
	    private double b;
	    private double c;

	    public PTB2() {
	        // Hàm tạo không tham số
	    }

	    public PTB2(double a, double b, double c) {
	        this.a = a;
	        this.b = b;
	        this.c = c;
	    }

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

	    public double calculateDelta() {
	        return b * b - 4 * a * c;
	    }

	    public void calculateRoots() {
	        double delta = calculateDelta();
	        if (delta > 0) {
	            double root1 = (-b + Math.sqrt(delta)) / (2 * a);
	            double root2 = (-b - Math.sqrt(delta)) / (2 * a);
	            System.out.println("Nghiệm thứ nhất: " + root1);
	            System.out.println("Nghiệm thứ hai: " + root2);
	        } else if (delta == 0) {
	            double root = -b / (2 * a);
	            System.out.println("Nghiệm kép: " + root);
	        } else {
	            System.out.println("Phương trình vô nghiệm.");
	        }
	    }
	   public static void main(String[] args) {
	        // Tạo đối tượng QuadraticEquation
	        PTB2 equation1 = new PTB2();
	        PTB2 equation2 = new PTB2(1, -3, 2);

	        // Thiết lập giá trị cho a, b, c
	        equation1.setA(2);
	        equation1.setB(-5);
	        equation1.setC(2);

	        // Lấy giá trị của a, b, c
	        System.out.println("Giá trị a của equation1 là: " + equation1.getA());
	        System.out.println("Giá trị b của equation1 là: " + equation1.getB());
	        System.out.println("Giá trị c của equation1 là: " + equation1.getC());

	        // Tính delta và nghiệm của phương trình
	        System.out.println("Delta của equation1 là: " + equation1.calculateDelta());
	        System.out.println("Nghiệm của equation1 là:");
	        equation1.calculateRoots();

	        System.out.println("Delta của equation2 là: " + equation2.calculateDelta());
	        System.out.println("Nghiệm của equation2 là:");
	        equation2.calculateRoots();
	    }
	}


