import MaozaiTea.pojo.Customer;
import MaozaiTea.service.CustomerService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration("classpath:springApplication.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class CustomerMapperTest {

    @Autowired
    private BeanFactory beanFactory;

    @Test
    public void testGetAllCustomer() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        List<Customer> res = customerService.getAllCustomer();
        for (Customer i: res) {
            System.out.println(i);
        }
    }

    @Test
    public void testGetCustomerByOr() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        Customer customer = new Customer();
        customer.setCustomerSex("女");
        customer.setCustomerName("咖喱");
        List<Customer> res = customerService.getCustomerByOr(customer);
        for (Customer i: res) {
            System.out.println(i);
        }
    }

    @Test
    public void testGetCustomerByID() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        Customer res = customerService.getCustomerByID(4);
        System.out.println(res);
    }

    @Test
    public void testAddCustomer() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        Customer customer = new Customer();
        customer.setCustomerName("李华");
        customer.setCustomerSex("男");
        customer.setCustomerAddress("北京");
        customer.setCustomerTel("12345678910");
        int res = customerService.addCustomer(customer);
        System.out.println(res);
    }

    @Test
    public void testDeleteCustomer() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        customerService.deleteCustomer(11);
    }

    @Test
    public void testUpdateCustomer() {
        CustomerService customerService = beanFactory.getBean("customerService", CustomerService.class);
        Customer customer = new Customer();
        customer.setCustomerID(10);
        customer.setCustomerName("啊这");
        customer.setCustomerAddress("湖北枝江");
        customerService.updateCustomer(customer);
    }
}
