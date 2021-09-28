package MaozaiTea.controller;

import MaozaiTea.pojo.Supplier;
import MaozaiTea.service.SupplierService;
import org.omg.PortableInterceptor.SUCCESSFUL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import static java.lang.Math.min;

@Controller
@RequestMapping(value = "/supplier")
public class SupplierController {
    @Autowired
    private SupplierService supplierService;

    @RequestMapping(value = "/show/{page}")
    public String showSupplier(Model model, @PathVariable("page") int page, String supplierName) {
        Supplier supplier = new Supplier();
        supplier.setSupplierName(supplierName);
        List<Supplier> supplierList1 = supplierService.getSupplierByOr(supplier);
        List<Supplier> supplierList = new ArrayList<Supplier>();
        int supplierListLength = supplierList1.size();
        int pageCount = supplierListLength / 5;
        if ((supplierListLength % 5) != 0) ++pageCount;
        if (page > pageCount) page = pageCount;
        if (page < 1) page = 1;
        for (int i = (page-1)*5, cnt = 0; i < supplierListLength && cnt < 5; ++i, ++cnt) {
            supplierList.add(supplierList1.get(i));
        }
        model.addAttribute("suppliers", supplierList);
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("curPage", page);
        model.addAttribute("supplierName", supplierName);
        return "showSupplier";
    }

    @RequestMapping(value = "/deleteSupplier/{page}/{supplierID}")
    public String deleteSupplier(Model model,@PathVariable("page") int page, @PathVariable("supplierID") int supplierID, String supplierName){
        supplierService.deleteSupplier(supplierID);

        Supplier supplier = new Supplier();
        supplier.setSupplierName(supplierName);
        List<Supplier> supplierList1 = supplierService.getSupplierByOr(supplier);
        List<Supplier> supplierList = new ArrayList<Supplier>();
        int supplierListLength = supplierList1.size();
        int pageCount = supplierListLength / 5;
        if((supplierListLength % 5) != 0 ) ++pageCount;
        if (pageCount < 1) pageCount = 1;
        if (page > pageCount) page = pageCount;
        if (page < 1) page = 1;
        for (int i = (page-1)*5, cnt = 0; i < supplierListLength && cnt < 5; ++i, ++cnt) {
            supplierList.add(supplierList1.get(i));
        }
        model.addAttribute("suppliers", supplierList);
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("curPage", page);
        model.addAttribute("supplierName", supplierName);
        return "showSupplier";
    }

    @RequestMapping(value = "/doAdd")
    public String adAdd(){
        return "addSupplier";
    }

    @RequestMapping(value = "/addSupplier")
    public String addSupplier(Supplier supplier, Model model) {
        supplierService.addSupplier(supplier);

        List<Supplier> supplierList = supplierService.getAllSupplier();
        int supplierListLength = supplierList.size();
        int pageCount = supplierListLength / 5;
        if ((supplierListLength % 5) != 0) ++pageCount;
        if (pageCount < 1) pageCount = 1;

        model.addAttribute("suppliers", supplierList.subList(0, min(5, supplierListLength)));
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("curPage", 1);
//        model.addAttribute("supplierName", null);

        return "showSupplier";
    }

    @RequestMapping(value = "/update/{page}/{supplierID}")
    public String update(@PathVariable("supplierID")int supplierID, Model model, @PathVariable("page") int page, String supplierName){
        Supplier supplier = supplierService.getSupplierByID(supplierID);
        model.addAttribute("supplier", supplier);
        model.addAttribute("curPage", page);
        model.addAttribute("supplierQueryName", supplierName);
        return "updateSupplier";
    }

    @RequestMapping(value = "/saveUpdate/{page}/{supplierID}")
    public String saveUpdate(@PathVariable("supplierID")int supplierID, @PathVariable("page") int page, Supplier supplier, Model model, @RequestParam("supplierQueryName") String supplierQueryName){
        supplierService.updateSupplier(supplier);

        Supplier supplier1 = new Supplier();
        supplier1.setSupplierName(supplierQueryName);
        List<Supplier> supplierList1 = supplierService.getSupplierByOr(supplier1);
        List<Supplier> supplierList = new ArrayList<Supplier>();
        int supplierListLength = supplierList1.size();
        int pageCount = supplierListLength / 5;
        if((supplierListLength % 5) != 0 ) ++pageCount;
        if (pageCount < 1) pageCount = 1;
        if (page > pageCount) page = pageCount;
        if (page < 1) page = 1;
        for (int i = (page-1)*5, cnt = 0; i < supplierListLength && cnt < 5; ++i, ++cnt) {
            supplierList.add(supplierList1.get(i));
        }
        model.addAttribute("suppliers", supplierList);
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("curPage", page);
        model.addAttribute("supplierName", supplierQueryName);

        return "showSupplier";
    }

    @RequestMapping(value = "/querySupplier")
    public String queryCustomer(Model model, Supplier supplier) {
        List<Supplier> supplierList = supplierService.getSupplierByOr(supplier);
        int supplierListLength = supplierList.size();
        int pageCount = supplierListLength / 5;
        if ((supplierListLength % 5) != 0) ++pageCount;
        if (pageCount < 1) pageCount = 1;

        model.addAttribute("suppliers", supplierList.subList(0, min(5, supplierListLength)));
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("curPage", 1);
        model.addAttribute("supplierName", supplier.getSupplierName());
        return "showSupplier";
    }
}
