package MaozaiTea.service.Impl;

import MaozaiTea.mapper.CustomerMapper;
import MaozaiTea.pojo.Customer;
import MaozaiTea.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    public List<Customer> getAllCustomer() {
        return customerMapper.getAllCustomer();
    }

    public List<Customer> getCustomerByOr(Customer customer) {
        return customerMapper.getCustomerByOr(customer);
    }

    public Customer getCustomerByID(int customerID) {
        return customerMapper.getCustomerByID(customerID);
    }

    public int addCustomer(Customer customer) {
        customerMapper.addCustomer(customer);
        return customer.getCustomerID();
    }

    public void deleteCustomer(int customerID) {
        customerMapper.deleteCustomer(customerID);
    }

    public void updateCustomer(Customer customer) {
        customerMapper.updateCustomer(customer);
    }
}
