import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Nhập thông tin cho Salaried Employee
        System.out.println("Nhập thông tin cho Salaried Employee:");
        System.out.print("First Name: ");
        String firstName = scanner.nextLine();
        System.out.print("Last Name: ");
        String lastName = scanner.nextLine();
        System.out.print("Social Security Number: ");
        String socialSecurityNumber = scanner.nextLine();
        System.out.print("Weekly Salary: ");
        double weeklySalary = scanner.nextDouble();

        // Tạo đối tượng Salaried Employee với thông tin vừa nhập
        SalariedEmployee salariedEmployee = new SalariedEmployee(firstName, lastName, socialSecurityNumber, weeklySalary);

        // Hiển thị lương của Salaried Employee
        System.out.println("Lương của Salaried Employee: " + salariedEmployee.earnings());

        // Tương tự, bạn có thể nhập thông tin cho các loại nhân viên khác và tính lương tương ứng
        // ... (Nhập thông tin cho các loại nhân viên khác và tính toán lương tương ứng)
        
        scanner.close();
    }
}