package MaozaiTea.pojo;

import java.util.Date;

public class Product {
    private int productID;
    private String productName;
    private Double productPrice;
    private Double productNum;
    private Date productODate;
    private Date productDDate;
    private int supplierID;

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Double getProductNum() {
        return productNum;
    }

    public void setProductNum(Double productNum) {
        this.productNum = productNum;
    }

    public Date getProductODate() {
        return productODate;
    }

    public void setProductODate(Date productODate) {
        this.productODate = productODate;
    }

    public Date getProductDDate() {
        return productDDate;
    }

    public void setProductDDate(Date productDDate) {
        this.productDDate = productDDate;
    }

    public int getSupplierID() {
        return supplierID;
    }

    public void setSupplierID(int supplierID) {
        this.supplierID = supplierID;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", productNum=" + productNum +
                ", productODate=" + productODate +
                ", productDDate=" + productDDate +
                ", supplierID=" + supplierID +
                '}';
    }
}
