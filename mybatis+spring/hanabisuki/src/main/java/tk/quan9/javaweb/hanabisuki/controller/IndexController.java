package tk.quan9.javaweb.hanabisuki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.service.impl.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @Autowired
    private UserServiceImpl userService;

    private void redirect(String url,HttpServletResponse response){
        try {
            response.sendRedirect(url);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping(value = {"/"})
    public String index(HttpSession session){
        return "index";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/Login"})
    public void Login(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        String id=request.getParameter("id");
        String passWord=request.getParameter("passWord");
        if(userService.check(id,passWord)){
            User user=userService.getUserById(id);
            System.out.println("id："+id+"  登录成功!");
            session.setAttribute("LoginUser",user);
            redirect("/CommentGetter?commentPage=1",response);
        }
        else {
            redirect("/",response);
        }
    }
}
