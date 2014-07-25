package com.shecc.cloud.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shecc.cloud.app.model.User;
import com.shecc.cloud.app.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/index")
    public String index(HttpServletRequest request) {
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request) {
        return "login";
    }

    @RequestMapping(value = "/login", method = { RequestMethod.POST })
    public String login1(Model model, HttpServletRequest request,
            String idtype, String idno, String password) {
        return "redirect:index.do";
        /*
         * if (userService.isExsist(username, password)) {
         * request.getSession().setAttribute("currentUser", username); Date dt =
         * new Date(); SimpleDateFormat matter1 = new
         * SimpleDateFormat("yyyy-MM-dd"); request.setAttribute("date",
         * matter1.format(dt)); return "commonware"; } else {
         * model.addAttribute("error", "error"); return "login";
         * 
         * }
         */
    }

    /**
     * 说明文件
     * 
     * @param model
     * @param request
     * @param idtype
     * @param idno
     * @param password
     * @return
     */
    @RequestMapping(value = "/readme", method = { RequestMethod.GET })
    public String readme(Model model, HttpServletRequest request,
            String idtype, String idno, String password) {
        return "readme";
    }

    @RequestMapping(value = "/register", method = { RequestMethod.POST })
    public String register(Model model, HttpServletRequest request,
            String username, String passwd1, String passwd2, String mail) {

        if (!"".equals(username) && (passwd1 == passwd2)) {
            request.getSession().setAttribute("currentUser", username);
            // return "redirect:listUser.do";// 重定向到listUser.do
            // String[] accordins = new String[] { "日志模块", "权限模块", "搜索模块" };
            // request.setAttribute("accordins", accordins);
            return "redirect:listUser.do";
        } else {
            model.addAttribute("error", "error");
            return "login.do";

        }
    }

    // 由于在applicationContext-mvc.xml中配置了SimpleMappingExceptionResolver，则此处不再起作用。
    @ExceptionHandler(RuntimeException.class)
    public String exceptionHandler() {
        System.out.println("The UserController throws an Exception...");
        return "errorPage";
    }

    private User initUser(HttpServletRequest req) {
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String age = req.getParameter("age");
        String passwd = req.getParameter("passwd");
        System.out.println(name + "---" + phone + "---" + age + "---" + passwd);
        User user = new User(name, Integer.parseInt(age), phone, passwd);
        String uid = req.getParameter("uid");
        if (uid != null) {
            user.setUid(Long.parseLong(uid));
        }
        return user;
    }

}
