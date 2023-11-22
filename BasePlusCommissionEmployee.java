public class BasePlusCommissionEmployee extends CommissionEmployee {
    private double baseSalary;

    // Constructor mặc định với tham số mặc định baseSalary = 0
    public BasePlusCommissionEmployee() {
        this.baseSalary = 0;
    }

    // Constructor với tham số baseSalary, grossSales và commissionRate
    public BasePlusCommissionEmployee(double grossSales, double commissionRate, double baseSalary) {
        super(grossSales, commissionRate);
        this.baseSalary = baseSalary;
    }

    // Phương thức get/set cho baseSalary
    public double getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(double baseSalary) {
        this.baseSalary = baseSalary;
    }

    // Override phương thức earnings() từ lớp CommissionEmployee
    @Override
    public double earnings() {
        return super.earnings() + baseSalary;
    }
}