package MaozaiTea.pojo;

public class Customer {
    private int customerID;
    private String customerName;
    private String customerTel;
    private String customerAddress;
    private String customerSex;


    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public void setCustomerSex(String customerSex) {
        this.customerSex = customerSex;
    }

    public int getCustomerID() {
        return customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getCustomerTel() {
        return customerTel;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public String getCustomerSex() {
        return customerSex;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerID=" + customerID +
                ", customerName='" + customerName + '\'' +
                ", customerTel='" + customerTel + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                ", customerSex='" + customerSex + '\'' +
                '}';
    }
}
