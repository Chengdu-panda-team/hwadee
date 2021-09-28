package MaozaiTea.service;

import MaozaiTea.pojo.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllProduct();
    List<Product> getProductByOr(Product product);
    Product getProductByID(int productID);
    int addProduct(Product product);
    void deleteProduct(int productID);
    void updateProduct(Product product);
}
