package MaozaiTea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/index")
public class IndexController {
//    ----------后台-------
    @RequestMapping(value = "/top")
    public String top() {
        return "top";
    }
    @RequestMapping(value = "/right")
    public String right() {
        return "right";
    }
    @RequestMapping(value = "/left")
    public String left() {
        return "left";
    }
    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

//    ------------homepage跳转------------
//    @RequestMapping(value = "/mainPage")
//     public String mainPage() {
//    return "mainPage";
//}

    @RequestMapping(value = "/admin")
    public String adminlogin() {
        return "test";
    }
}
