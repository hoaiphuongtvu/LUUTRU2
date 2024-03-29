import java.util.Scanner;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Employee {
    private String lastName;
    private Date birthDate;
    private Date hireDate;

    public Employee(String lastName, Date birthDate, Date hireDate) {
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.hireDate = hireDate;
    }

    public void displayEmployee() {
        System.out.println("Họ: " + lastName);
        System.out.println("Ngày sinh: " + birthDate);
        System.out.println("Ngày vào làm: " + hireDate);
    }

    public static void main(String[] args) throws ParseException {
        Scanner scanner = new Scanner(System.in);

        // Nhập thông tin từ người dùng
        System.out.println("Nhập họ của nhân viên: ");
        String lastName = scanner.nextLine();

        System.out.println("Nhập ngày sinh của nhân viên (yyyy-MM-dd): ");
        String birthDateString = scanner.nextLine();
        SimpleDateFormat birthDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date birthDate = birthDateFormat.parse(birthDateString);

        System.out.println("Nhập ngày vào làm của nhân viên (yyyy-MM-dd): ");
        String hireDateString = scanner.nextLine();
        Date hireDate = birthDateFormat.parse(hireDateString);

        // Tạo đối tượng Employee với thông tin vừa nhập
        Employee employee = new Employee(lastName, birthDate, hireDate);

        // Hiển thị thông tin nhân viên
        employee.displayEmployee();

        scanner.close();
    }
}