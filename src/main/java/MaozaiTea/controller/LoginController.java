package MaozaiTea.controller;

import MaozaiTea.pojo.RSAEncrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import javax.swing.JOptionPane;//导入java.swing包下的JOptionPane类
import javax.swing.plaf.FontUIResource;
import java.awt.*;

@Controller
@RequestMapping(value = "/admin")
public class LoginController {
//    自动登录时间为一个月
    static int autoLoginTimeout = 30*24*60*60;

    @RequestMapping(value = "/login")
    public String adminLogin(@RequestParam("loginname") String loginname,
                             @RequestParam("password") String password, HttpServletResponse response,
                             @RequestParam(value = "remember", required = false) boolean remember) {
        if (loginname.equals("panda") && password.equals("001")) {
            if (remember && autoLoginTimeout > 0) {
                try {
                    Cookie userNameCookie = new Cookie("loginname", RSAEncrypt.encrypt(loginname, RSAEncrypt.getPublicKey()));
                    Cookie passwordCookie = new Cookie("password", RSAEncrypt.encrypt(password, RSAEncrypt.getPublicKey()));
                    userNameCookie.setMaxAge(autoLoginTimeout);
                    userNameCookie.setPath("/");
                    passwordCookie.setMaxAge(autoLoginTimeout);
                    passwordCookie.setPath("/");
                    response.addCookie(userNameCookie);
                    response.addCookie(passwordCookie);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return "index";
        }
        else {
//            System.out.println(JOptionPane.getRootFrame());
//            JFrame frame = new JFrame("JFrameTest");
//            frame.setAlwaysOnTop(true);
//            UIManager.put("OptionPane.buttonFont", new FontUIResource(new Font("方正粗黑宋简体", Font.PLAIN, 20)));
//// 设置文本显示效果
//            UIManager.put("OptionPane.messageFont", new FontUIResource(new Font("方正粗黑宋简体", Font.PLAIN, 20)));
//            JOptionPane.showMessageDialog(frame, "用户名或密码错误，登陆失败!", "登陆失败", JOptionPane.ERROR_MESSAGE);
////            System.out.println(loginname + " " + password);
            return "login";
        }
    }

//    删除Cookie
    @RequestMapping(value = "logout")
    public String adminLogout(HttpServletRequest request, HttpServletResponse response) {
        try {
            Cookie userNameCookie = new Cookie("loginname", null);
            Cookie passwordCookie = new Cookie("password", null);
            userNameCookie.setMaxAge(0);
            userNameCookie.setPath("/");
            passwordCookie.setMaxAge(0);
            passwordCookie.setPath("/");
            response.addCookie(userNameCookie);
            response.addCookie(passwordCookie);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "login";
    }

    @RequestMapping(value = "/backToHome")
    public String backToHome() {
        return "homepage";
    }

    @RequestMapping(value = "/loginCookie")
    public String autoLogin(HttpServletRequest request) {
        String loginCookieName = "";
       String loginCookiePassword = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loginname")) {
                    loginCookieName = cookie.getValue();
                } else if (cookie.getName().equals("password")) {
                    loginCookiePassword = cookie.getValue();
                }
            }
            if (!loginCookieName.equals("") && !loginCookiePassword.equals("")) {
                try {
//                    if (loginCookieName.equals("panda") && loginCookiePassword.equals("001")) {
//                        return "index";
//                    }
                    if ("panda".equals(RSAEncrypt.decrypt(loginCookieName, RSAEncrypt.getPrivateKey())) && "001".equals(RSAEncrypt.decrypt(loginCookiePassword, RSAEncrypt.getPrivateKey()))) {
                        return "index";
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return "login";
    }
}
