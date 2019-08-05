package tk.quan9.javaweb.hanabisuki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.service.CommentService;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;
import tk.quan9.javaweb.hanabisuki.service.UserService;
import tk.quan9.javaweb.hanabisuki.service.impl.Security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    RightsCheck rightsCheck;
    @Autowired
    CommentService commentService;


    private void redirect(String url, HttpServletResponse response){
        try {
            response.sendRedirect(url);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/UserGetter"})
    public String userGetter(HttpSession session){
        List<User> userList=userService.getUserList();
        for (User user:userList) {
            user.setCommentCounts(userService.getCommentCount(user.getId()));
        }
        session.setAttribute("userList",userList);
        return "userinfo";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/userProfileProducer"})
    public String userProfileProducer(HttpSession session, HttpServletRequest request){
        int userId=Integer.parseInt(request.getParameter("userId"));
        if(rightsCheck.userEditCheck(userId,
                ((User)session.getAttribute("LoginUser")).getId())) {
            User user = userService.getUserById(userId);
            session.setAttribute("userForProfile", user);
            return "userprofile";
        }else {
            return "userinfo";
        }
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/userProfileEditor"})
    public void userProfileEditor(HttpSession session,
                                    HttpServletRequest request,HttpServletResponse response){
        userService.updateUser(request,session);
        redirect("/UserGetter",response);
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/searchByUser"})
    public String searchByUser(HttpSession session,HttpServletRequest request){
        int userId=Integer.parseInt(request.getParameter("commentUserId"));
        List<Comment> commentList=commentService.getCommentListByUserId(userId);
        session.setAttribute("commentListByUser",commentList);
        return "search";
    }
}
