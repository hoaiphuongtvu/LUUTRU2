public class SalariedEmployee extends Employee {
    private double weeklySalary;

    // Constructor mặc định với tham số mặc định weeklySalary = 0
    public SalariedEmployee() {
        this.weeklySalary =0;
    }

    // Constructor với tham số weeklySalary
    public SalariedEmployee(String firstName, String lastName, String socialSecurityNumber, double weeklySalary) {
        super(firstName, lastName, socialSecurityNumber,weeklySalary);
        this.weeklySalary = weeklySalary;
    }

    // Phương thức get/set cho weeklySalary
    public double getWeeklySalary() {
        return weeklySalary;
    }

    public void setWeeklySalary(double weeklySalary) {
        this.weeklySalary = weeklySalary;
    }

    // Override phương thức earnings() từ lớp Employee
    @Override
    public double earnings() {
        return weeklySalary;
    }
}