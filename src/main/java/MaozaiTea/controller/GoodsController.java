package MaozaiTea.controller;

import MaozaiTea.pojo.*;
import MaozaiTea.service.GoodsService;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.xerces.internal.xs.StringList;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Math.max;
import static java.lang.Math.min;
import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

@MultipartConfig
@Controller
@RequestMapping(value = "/goods")
public class GoodsController extends HttpServlet {
    private static final long serialVersionUID = 1;

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(value = "/show/{curPage}")
    public String showGoods(Model model, @PathVariable("curPage") int curPage, GoodsQuery goodsQuery) {
        goodsQuery.setGoodsQueryPageSize(5);
        goodsQuery.setGoodsQueryStart((curPage-1)*5);

        int gc = 0, nc = 0, lcc = 0, sxc = 0, kf = 0;
        if (goodsQuery.getGoodsQueryCategory() == null) {
            goodsQuery.setGoodsQueryCategory("果茶");
            gc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("奶茶");
            nc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("冷萃茶");
            lcc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("烧仙草");
            sxc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("咖啡");
            kf = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory(null);
        }
        else {
            if (goodsQuery.getGoodsQueryCategory().equals("果茶")) gc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("奶茶")) nc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("冷萃茶")) lcc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("烧仙草")) sxc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("咖啡")) kf = goodsService.getCount(goodsQuery);
        }

        List<Integer> goodsCategories = new ArrayList<Integer>();
        goodsCategories.add(gc);
        goodsCategories.add(nc);
        goodsCategories.add(lcc);
        goodsCategories.add(sxc);
        goodsCategories.add(kf);

        model.addAttribute("page", new Page(curPage, Page.getPageNum(goodsService.getCount(goodsQuery), 5), 5, goodsService.getGoodsByOr2(goodsQuery)));
        model.addAttribute("goodsQuery", goodsQuery);
        model.addAttribute("goodsCategories", goodsCategories);
        return "showGoods";
    }

    @RequestMapping(value = "/add")
    public String addGoods() {
        return "addGoods";
    }

    @RequestMapping(value = "/addGoods")
    public String addGoods(Model model, @RequestParam("goodsImgFile") MultipartFile file,Goods goods, HttpServletRequest request) {
        if (file != null) {
            String targetDirectory = request.getSession().getServletContext().getRealPath("/resources/images");
            String tmpFileName = file.getOriginalFilename(); // 上传的文件名
            int dot = tmpFileName.lastIndexOf('.');
            String ext = "";  //文件后缀名
            if ((dot > -1) && (dot < (tmpFileName.length() - 1))) {
                ext = tmpFileName.substring(dot + 1);
            }
            // 其他文件格式不处理
            if ("png".equalsIgnoreCase(ext) || "jpg".equalsIgnoreCase(ext) || "gif".equalsIgnoreCase(ext)) {
                // 重命名上传的文件名
                String targetFileName = StringUtile.renameFileName(tmpFileName);
                // 保存的新文件
                File target = new File(targetDirectory, targetFileName);

                try {
                    // 保存文件
                    FileUtils.copyInputStreamToFile(file.getInputStream(), target);
                } catch (IOException e) {
                    e.printStackTrace();
                }

                goods.setGoodsImg(targetFileName);
            }
        }

        if (goods.getGoodsCategory().equals("请选择")) goods.setGoodsCategory("奶茶");
        goodsService.addGoods(goods);
        GoodsQuery goodsQuery = new GoodsQuery();
        goodsQuery.setGoodsQueryPageSize(5);
        goodsQuery.setGoodsQueryStart(0);

        int gc = 0, nc = 0, lcc = 0, sxc = 0, kf = 0;
        if (goodsQuery.getGoodsQueryCategory() == null) {
            goodsQuery.setGoodsQueryCategory("果茶");
            gc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("奶茶");
            nc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("冷萃茶");
            lcc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("烧仙草");
            sxc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("咖啡");
            kf = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory(null);
        }
        else {
            if (goodsQuery.getGoodsQueryCategory().equals("果茶")) gc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("奶茶")) nc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("冷萃茶")) lcc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("烧仙草")) sxc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("咖啡")) kf = goodsService.getCount(goodsQuery);
        }

        List<Integer> goodsCategories = new ArrayList<Integer>();
        goodsCategories.add(gc);
        goodsCategories.add(nc);
        goodsCategories.add(lcc);
        goodsCategories.add(sxc);
        goodsCategories.add(kf);

        model.addAttribute("page", new Page(1, Page.getPageNum(goodsService.getCount(goodsQuery), 5), 5, goodsService.getGoodsByOr2(goodsQuery)));
        model.addAttribute("goodsQuery", goodsQuery);
        model.addAttribute("goodsCategories", goodsCategories);
        return "showGoods";
    }

    @RequestMapping(value = "/queryGoods")
    public String queryGoods(Model model, GoodsQuery goodsQuery) {
        if (goodsQuery.getGoodsQueryCategory().equals("选择种类")) goodsQuery.setGoodsQueryCategory(null);
        if (goodsQuery.getGoodsQueryName().equals("")) goodsQuery.setGoodsQueryName(null);

        goodsQuery.setGoodsQueryPageSize(5);
        goodsQuery.setGoodsQueryStart(0);

        int gc = 0, nc = 0, lcc = 0, sxc = 0, kf = 0;
        if (goodsQuery.getGoodsQueryCategory() == null) {
            goodsQuery.setGoodsQueryCategory("果茶");
            gc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("奶茶");
            nc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("冷萃茶");
            lcc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("烧仙草");
            sxc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("咖啡");
            kf = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory(null);
        }
        else {
            if (goodsQuery.getGoodsQueryCategory().equals("果茶")) gc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("奶茶")) nc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("冷萃茶")) lcc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("烧仙草")) sxc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("咖啡")) kf = goodsService.getCount(goodsQuery);
        }

        List<Integer> goodsCategories = new ArrayList<Integer>();
        goodsCategories.add(gc);
        goodsCategories.add(nc);
        goodsCategories.add(lcc);
        goodsCategories.add(sxc);
        goodsCategories.add(kf);

        model.addAttribute("page", new Page(1, Page.getPageNum(goodsService.getCount(goodsQuery), 5), 5, goodsService.getGoodsByOr2(goodsQuery)));
        model.addAttribute("goodsQuery", goodsQuery);
        model.addAttribute("goodsCategories", goodsCategories);
        return "showGoods";
    }

    @RequestMapping(value = "/deleteGoods/{page}/{goodsID}")
    public String deleteGoods(Model model, @PathVariable("goodsID") int goodsID, @PathVariable("page") int page, GoodsQuery goodsQuery, HttpServletRequest request) {
        Goods goods = goodsService.getGoodsByID(goodsID);
//        删除图片文件
        String oldImg = goods.getGoodsImg();
        String targetDirectory = request.getSession().getServletContext().getRealPath("/resources/images");
        File file1 = new File(targetDirectory + File.separatorChar + oldImg);
        if (file1.exists()) file1.delete();
//        删除记录
        goodsService.deleteGoods(goodsID);

        int pageCount = max(Page.getPageNum(goodsService.getCount(goodsQuery), 5), 1);
        int curPage = min(pageCount, page);

        goodsQuery.setGoodsQueryPageSize(5);
        goodsQuery.setGoodsQueryStart((curPage-1)*5);

        int gc = 0, nc = 0, lcc = 0, sxc = 0, kf = 0;
        if (goodsQuery.getGoodsQueryCategory() == null) {
            goodsQuery.setGoodsQueryCategory("果茶");
            gc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("奶茶");
            nc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("冷萃茶");
            lcc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("烧仙草");
            sxc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("咖啡");
            kf = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory(null);
        }
        else {
            if (goodsQuery.getGoodsQueryCategory().equals("果茶")) gc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("奶茶")) nc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("冷萃茶")) lcc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("烧仙草")) sxc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("咖啡")) kf = goodsService.getCount(goodsQuery);
        }

        List<Integer> goodsCategories = new ArrayList<Integer>();
        goodsCategories.add(gc);
        goodsCategories.add(nc);
        goodsCategories.add(lcc);
        goodsCategories.add(sxc);
        goodsCategories.add(kf);

        model.addAttribute("page", new Page(curPage, pageCount, 5, goodsService.getGoodsByOr2(goodsQuery)));
        model.addAttribute("goodsQuery", goodsQuery);
        model.addAttribute("goodsCategories", goodsCategories);

        return "showGoods";
    }

    //-------------update by RLM------------------------------
    @RequestMapping(value = "/update/{page}/{goodsID}")
    public String getCustomerById(@PathVariable("goodsID") int goodsID, @PathVariable("page") int page, Model model, GoodsQuery goodsQuery){
        Goods goods = goodsService.getGoodsByID(goodsID);

        model.addAttribute("curPage", page);
        model.addAttribute("goods",goods);
        model.addAttribute("goodsQuery", goodsQuery);
        return "updateGoods";
    }
    @RequestMapping(value="/saveUpdate/{page}/{goodsID}")
    public String updateCustomer(@PathVariable("page") int page,@PathVariable("goodsID") int goodsID, Goods goods, Model model, GoodsQuery goodsQuery, @RequestParam("goodsImgFile") MultipartFile file, HttpServletRequest request, @RequestParam("oldImg") String oldImg) {
        if (file != null && !file.getOriginalFilename().equals("")) {
            String targetDirectory = request.getSession().getServletContext().getRealPath("/resources/images");
            File file1 = new File(targetDirectory + File.separatorChar + oldImg);
            if (file1.exists()) file1.delete();

            String tmpFileName = file.getOriginalFilename(); // 上传的文件名
            int dot = tmpFileName.lastIndexOf('.');
            String ext = "";  //文件后缀名
            if ((dot > -1) && (dot < (tmpFileName.length() - 1))) {
                ext = tmpFileName.substring(dot + 1);
            }
            // 其他文件格式不处理
            if ("png".equalsIgnoreCase(ext) || "jpg".equalsIgnoreCase(ext) || "gif".equalsIgnoreCase(ext)) {
                // 重命名上传的文件名
                String targetFileName = StringUtile.renameFileName(tmpFileName);
                // 保存的新文件
                File target = new File(targetDirectory, targetFileName);

                try {
                    // 保存文件
                    FileUtils.copyInputStreamToFile(file.getInputStream(), target);
                } catch (IOException e) {
                    e.printStackTrace();
                }

                goods.setGoodsImg(targetFileName);
            }
        }

        goods.setGoodsID(goodsID);
        if (goods.getGoodsCategory().equals("选择种类")) goods.setGoodsCategory("奶茶");
        goodsService.updateGoods(goods);

        int pageCount = max(Page.getPageNum(goodsService.getCount(goodsQuery), 5), 1);
        int curPage = min(pageCount, page);

        goodsQuery.setGoodsQueryPageSize(5);
        goodsQuery.setGoodsQueryStart((curPage-1)*5);

        int gc = 0, nc = 0, lcc = 0, sxc = 0, kf = 0;
        if (goodsQuery.getGoodsQueryCategory() == null) {
            goodsQuery.setGoodsQueryCategory("果茶");
            gc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("奶茶");
            nc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("冷萃茶");
            lcc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("烧仙草");
            sxc = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory("咖啡");
            kf = goodsService.getCount(goodsQuery);
            goodsQuery.setGoodsQueryCategory(null);
        }
        else {
            if (goodsQuery.getGoodsQueryCategory().equals("果茶")) gc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("奶茶")) nc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("冷萃茶")) lcc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("烧仙草")) sxc = goodsService.getCount(goodsQuery);
            else if (goodsQuery.getGoodsQueryCategory().equals("咖啡")) kf = goodsService.getCount(goodsQuery);
        }

        List<Integer> goodsCategories = new ArrayList<Integer>();
        goodsCategories.add(gc);
        goodsCategories.add(nc);
        goodsCategories.add(lcc);
        goodsCategories.add(sxc);
        goodsCategories.add(kf);

        model.addAttribute("page", new Page(curPage, pageCount, 5, goodsService.getGoodsByOr2(goodsQuery)));
        model.addAttribute("goodsQuery", goodsQuery);
        model.addAttribute("goodsCategories", goodsCategories);
        return "showGoods";
    }
    //--------------------------------------------------------
}
