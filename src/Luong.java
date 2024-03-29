import java.util.Scanner;

public class Luong {
    private String name;
    private String position;
    private double dailySalary;
    private int totalDaysWorked;
    private int totalDaysOff;

    // Constructors
    public Luong(String name, String position, double dailySalary) {
        this.name = name;
        this.position = position;
        this.dailySalary = dailySalary;
    }

    // Getter và Setter cho tên, chức vụ, mức lương ngày và số ngày làm việc/ngày nghỉ
    // (Đây chỉ là ví dụ cơ bản, bạn có thể mở rộng hoặc thay đổi logic tính lương tùy theo yêu cầu)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getDailySalary() {
        return dailySalary;
    }

    public void setDailySalary(double dailySalary) {
        this.dailySalary = dailySalary;
    }

    public int getTotalDaysWorked() {
        return totalDaysWorked;
    }

    public void setTotalDaysWorked(int totalDaysWorked) {
        this.totalDaysWorked = totalDaysWorked;
    }

    public int getTotalDaysOff() {
        return totalDaysOff;
    }

    public void setTotalDaysOff(int totalDaysOff) {
        this.totalDaysOff = totalDaysOff;
    }

    // Phương thức tính lương dựa trên số ngày làm việc và số ngày nghỉ
    public double calculateSalary() {
        double totalSalary = (totalDaysWorked * dailySalary) - (totalDaysOff * (dailySalary / 2)); // Giả sử ngày nghỉ giảm mức lương một nửa
        return totalSalary;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Nhập thông tin từ người dùng
        System.out.println("Nhập tên nhân viên: ");
        String name = scanner.nextLine();

        System.out.println("Nhập chức vụ: ");
        String position = scanner.nextLine();

        System.out.println("Nhập mức lương mỗi ngày: ");
        double dailySalary = scanner.nextDouble();

        System.out.println("Nhập số ngày làm việc: ");
        int totalDaysWorked = scanner.nextInt();

        System.out.println("Nhập số ngày nghỉ: ");
        int totalDaysOff = scanner.nextInt();

        // Tạo đối tượng Employee và thiết lập thông tin từ người dùng
        Luong luong = new Luong(name, position, dailySalary);
        luong.setTotalDaysWorked(totalDaysWorked);
        luong.setTotalDaysOff(totalDaysOff);

        // Tính và hiển thị lương của nhân viên
        double salary = luong.calculateSalary();
        System.out.println("Lương của " + luong.getName() + " là: " + salary);

        scanner.close();
    }
}
