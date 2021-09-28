package MaozaiTea.controller;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.CollationKey;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        System.out.println("----------------------------------拦截------------------------------------------------");
        String adminName = (String) request.getSession().getAttribute("loginname");
        String adminPassword = (String) request.getSession().getAttribute("password");
        System.out.println(adminName);
        System.out.println(adminPassword);

        if (adminName == null) {
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
                    if (loginCookieName.equals("panda") && loginCookiePassword.equals("001")) {
                        request.getSession().setAttribute("loginname", loginCookieName);
                        request.getSession().setAttribute("password", loginCookiePassword);
//                        return true;
                    }
                }
            }
        }
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//        modelAndView.setViewName("index");
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
