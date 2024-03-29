
public abstract class Employee {
    private String firstName;
    private String lastName;
    private String socialSecurityNumber;

    // Constructor
    public Employee(String firstName, String lastName, String socialSecurityNumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.socialSecurityNumber = socialSecurityNumber;
    }

    // Các phương thức get và set
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSocialSecurityNumber() {
        return socialSecurityNumber;
    }

    public void setSocialSecurityNumber(String socialSecurityNumber) {
        this.socialSecurityNumber = socialSecurityNumber;
    }

    // Phương thức thuần ảo (trừu tượng) earnings()
    public abstract double earnings();

    // Phương thức print()
    public void print() {
        System.out.println("Name: " + firstName + " " + lastName);
        System.out.println("Social Security Number: " + socialSecurityNumber);
    }
}