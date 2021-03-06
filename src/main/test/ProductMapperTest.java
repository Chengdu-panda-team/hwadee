import MaozaiTea.pojo.Product;
import MaozaiTea.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@ContextConfiguration("classpath:springApplication.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ProductMapperTest {

    @Autowired
    private BeanFactory beanFactory;

    @Test
    public void testGetAllProduct() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        List<Product> res = productService.getAllProduct();
        for (Product i: res) {
            System.out.println(i);
        }
    }

    @Test
    public void testGetProductByOr() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        Product product = new Product();
        product.setProductName("果酱");
        List<Product> res = productService.getProductByOr(product);
        for (Product i: res){
            System.out.println(i);
        }


    }

    @Test
    public void testGetProductByID() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        Product res = productService.getProductByID(4);
        System.out.println(res);
    }

    @Test
    public void testAddProduct() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        Product product = new Product();
        product.setProductName("花生");
        product.setProductPrice(25.00);
        product.setProductNum(10.00);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        product.setProductODate(new Date(121,6,22));
        try {
            product.setProductODate(simpleDateFormat.parse("2022-08-25"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        product.setProductDDate(new Date(122,6,22));
        product.setSupplierID(5);
        int res = productService.addProduct(product);
        System.out.println(res);

    }

    @Test
    public void testDeleteProduct() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        productService.deleteProduct(19);
    }

    @Test
    public void testUpdateProduct() {
        ProductService productService = beanFactory.getBean("productService",ProductService.class);
        Product product = new Product();
        product.setProductID(20);
        product.setProductName("花生酱");
        productService.updateProduct(product);

    }
}
