package MaozaiTea.service.Impl;

import MaozaiTea.mapper.ProductMapper;
import MaozaiTea.pojo.Product;
import MaozaiTea.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    public List<Product> getAllProduct() {
        return productMapper.getAllProduct();
    }

    public List<Product> getProductByOr(Product product) {
        return productMapper.getProductByOr(product);
    }

    public Product getProductByID(int productID) {
        return productMapper.getProductByID(productID);
    }

    public int addProduct(Product product) {
        productMapper.addProduct(product);
        return product.getProductID();
    }

    public void deleteProduct(int productID) {
        productMapper.deleteProduct(productID);
    }

    public void updateProduct(Product product) {
        productMapper.updateProduct(product);
    }
}
