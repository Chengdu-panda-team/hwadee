package MaozaiTea.service.Impl;

import MaozaiTea.mapper.SupplierMapper;
import MaozaiTea.pojo.Supplier;
import MaozaiTea.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class SupplierServiceImpl implements SupplierService {
    @Autowired
    private SupplierMapper supplierMapper;

    public List<Supplier> getAllSupplier() {
        return supplierMapper.getAllSupplier();
    }

    public List<Supplier> getSupplierByOr(Supplier supplier) {
        return supplierMapper.getSupplierByOr(supplier);
    }

    public Supplier getSupplierByID(int supplierID) {
        return supplierMapper.getSupplierByID(supplierID);
    }

    public int addSupplier(Supplier supplier) {
        supplierMapper.addSupplier(supplier);
        return supplier.getSupplierID();
    }

    public void deleteSupplier(int supplierID) {
        supplierMapper.deleteSupplier(supplierID);
    }

    public void updateSupplier(Supplier supplier) {
        supplierMapper.updateSupplier(supplier);
    }
}
