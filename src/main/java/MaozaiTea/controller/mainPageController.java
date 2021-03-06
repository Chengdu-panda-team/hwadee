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
@RequestMapping(value = "/mainPage")
public class mainPageController {
    @Autowired
    private GoodsService goodsService;

    //前台   展示所有奶茶
    @RequestMapping(value = "/showAll")
    public String getAllGoods(Model model){
        List<Goods> goodsList = goodsService.getAllGoods();
        GoodsQuery goodsQuery = new GoodsQuery();
        model.addAttribute("goodsList",goodsList);
        model.addAttribute("goodsQuery", goodsQuery);
        return "mainPage";
    }

    //前台   展示特定种类奶茶
    @RequestMapping(value="/queryGoods")
    public String queryGoods(Model model, GoodsQuery goodsQuery){
        if (goodsQuery.getGoodsQueryCategory().equals("选择种类")) goodsQuery.setGoodsQueryCategory(null);
        goodsQuery.setGoodsQueryStart(0);
        goodsQuery.setGoodsQueryPageSize(goodsService.getCount(new GoodsQuery()));
        List<Goods> goodsList = goodsService.getGoodsByOr2(goodsQuery);
        model.addAttribute("goodsList", goodsList);
        model.addAttribute("goodsQuery", goodsQuery);
        return "mainPage";
    }

    @RequestMapping(value = "/homepage")
    public String homepage() {
        return "homepage";
    }

    @RequestMapping(value = "/aboutour")
    public String aboutour() {
        return "aboutour";
    }

}
