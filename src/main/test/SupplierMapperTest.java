import MaozaiTea.pojo.Customer;
import MaozaiTea.pojo.Supplier;
import MaozaiTea.service.SupplierService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration("classpath:springApplication.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class SupplierMapperTest {

    @Autowired
    private BeanFactory beanFactory;

    @Test
    public void testGetAllSupplier(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        List<Supplier> res = supplierService.getAllSupplier();
        for (Supplier i:res) {
            System.out.println(i);
        }
    }

    @Test
    public void testGetSupplierByOr(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        Supplier supplier = new Supplier();
        supplier.setSupplierName("天骄生物技术有限公司");
        supplier.setSupplierAddress("菏泽");
        supplier.setSupplierTel("13665300617");
        List<Supplier> res = supplierService.getSupplierByOr(supplier);
        for (Supplier i: res) {
            System.out.println(i);
        }
    }

    @Test
    public void testGetSupplierByID(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        Supplier res = supplierService.getSupplierByID(4);
        System.out.println(res);
    }

    @Test
    public void testAddSupplier(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        Supplier supplier = new Supplier();
        supplier.setSupplierName("来伊份食品公司");
        supplier.setSupplierTel("17895648596");
        supplier.setSupplierAddress("上海");
        int res = supplierService.addSupplier(supplier);
        System.out.println(res);
    }

    @Test
    public void testDeleteSupplier(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        supplierService.deleteSupplier(8);
    }

    @Test
    public void testUpdateSupplier(){
        SupplierService supplierService = beanFactory.getBean("supplierService",SupplierService.class);
        Supplier supplier = new Supplier();
        supplier.setSupplierID(9);
        supplier.setSupplierName("良品铺子");
        supplier.setSupplierAddress("你问我我也不晓得");
        supplierService.updateSupplier(supplier);
    }

    @Test
    public void test() {
        String string = "1&goodsName=null&goodsCategory=null&lowPrice=10.0&highPrice=null";
        String[] strings = string.split("&");
        System.out.println(strings.length);
        for (String i: strings) {
            System.out.println(i);
        }
        String lowPrice = strings[3].split("=")[1];
        System.out.println(lowPrice);
        System.out.println(Double.valueOf(Double.parseDouble(lowPrice)));
        Double d = Double.parseDouble(lowPrice);
        System.out.println(d);
    }
}











