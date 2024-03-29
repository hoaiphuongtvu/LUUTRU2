public class CommissionEmployee extends Employee {
    private double grossSales;
    private double commissionRate;

    // Constructor mặc định với tham số mặc định grossSales = 0 và commissionRate = 0
    public CommissionEmployee() {
        this.grossSales = 0;
        this.commissionRate = 0;
    }

    // Constructor với tham số grossSales và commissionRate
    public CommissionEmployee(String firstName, String lastName, String socialSecurityNumber, double grossSales, double commissionRate) {
        super(firstName, lastName, socialSecurityNumber);
        this.grossSales = grossSales;
        this.commissionRate = commissionRate;
    }

    // Phương thức get/set cho grossSales và commissionRate
    public double getGrossSales() {
        return grossSales;
    }

    public void setGrossSales(double grossSales) {
        this.grossSales = grossSales;
    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }

    // Override phương thức earnings() từ lớp Employee
    @Override
    public double earnings() {
        return grossSales * commissionRate;
    }
}