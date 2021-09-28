package MaozaiTea.service;

import MaozaiTea.pojo.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAllCustomer();
    List<Customer> getCustomerByOr(Customer customer);
    Customer getCustomerByID(int customerID);
    int addCustomer(Customer customer);
    void deleteCustomer(int customerID);
    void updateCustomer(Customer customer);
}
