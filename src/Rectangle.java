
public class Rectangle {
	    private int length;
	    private int width;

	    public Rectangle() {
	        this.length = 10;
	        this.width = 10;
	    }

	    public Rectangle(int length, int width) {
	        if (length >= 0 && length <= 20 && width >= 0 && width <= 20) {
	            this.length = length;
	            this.width = width;
	        } else {
	            this.length = 10;
	            this.width = 10;
	        }
	    }

	    public void setLength(int length) {
	        if (length >= 0 && length <= 20) {
	            this.length = length;
	        }
	    }

	    public void setWidth(int width) {
	        if (width >= 0 && width <= 20) {
	            this.width = width;
	        }
	    }

	    public int getLength() {
	        return length;
	    }

	    public int getWidth() {
	        return width;
	    }

	    public double calculateArea() {
	        return length * width;
	    }

	    public double calculatePerimeter() {
	        return 2 * (length + width);
	    }

	    public double calculateDiagonal() {
	        return Math.sqrt(Math.pow(length, 2) + Math.pow(width, 2));
	    }

	    public boolean isSquare() {
	        return length == width;
	    }

	    public void displayRectangle() {
	        System.out.println("[" + length + " x " + width + "]");
	    }

	    public void drawRectangle(char symbol) {
	        for (int i = 0; i < width; i++) {
	            for (int j = 0; j < length; j++) {
	                System.out.print(symbol + " ");
	            }
	            System.out.println();
	        }
	    }
	        public static void main(String[] args) {
	            // Tạo đối tượng Rectangle
	            Rectangle rectangle1 = new Rectangle();
	            Rectangle rectangle2 = new Rectangle(15, 8);

	            // Hiển thị thông tin hình chữ nhật
	            rectangle1.displayRectangle();
	            rectangle2.displayRectangle();

	            // Đặt lại chiều dài và chiều rộng
	            rectangle1.setLength(12);
	            rectangle1.setWidth(6);

	            // Hiển thị chiều dài và chiều rộng
	            System.out.println("Chiều dài của rectangle1 là: " + rectangle1.getLength());
	            System.out.println("Chiều rộng của rectangle1 là: " + rectangle1.getWidth());

	            // Tính và hiển thị chu vi, diện tích, đường chéo
	            System.out.println("Chu vi của rectangle1 là: " + rectangle1.calculatePerimeter());
	            System.out.println("Diện tích của rectangle1 là: " + rectangle1.calculateArea());
	            System.out.println("Đường chéo của rectangle1 là: " + rectangle1.calculateDiagonal());

	            // Kiểm tra xem rectangle1 có phải hình vuông không
	            System.out.println("rectangle1 có phải hình vuông không? " + rectangle1.isSquare());

	            // Vẽ hình chữ nhật
	            System.out.println("Vẽ hình chữ nhật rectangle1:");
	            rectangle1.drawRectangle('*');
	        }
	  }


