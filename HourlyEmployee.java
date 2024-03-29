public class HourlyEmployee extends Employee {
    private double wage;
    private double hours;

    // Constructor mặc định với tham số mặc định wage = 0 và hours = 0
    public HourlyEmployee() {
        this.wage = 0;
        this.hours = 0;
    }

    // Constructor với tham số wage và hours
    public HourlyEmployee(String firstName, String lastName, String socialSecurityNumber, double wage, double hours) {
        super(firstName, lastName, socialSecurityNumber);
        this.wage = wage;
        this.hours = hours;
    }

    // Phương thức get/set cho wage và hours
    public double getWage() {
        return wage;
    }

    public void setWage(double wage) {
        this.wage = wage;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }

    // Override phương thức earnings() từ lớp Employee
    @Override
    public double earnings() {
        if (hours <= 40) {
            return wage * hours;
        } else {
            double normalPay = wage * 40;
            double extraPay = (hours - 40) * wage * 1.5;
            return normalPay + extraPay;
        }
    }
}