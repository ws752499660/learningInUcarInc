package tk.quan9.javaweb.hanabisuki.filter;

import org.springframework.beans.factory.annotation.Autowired;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.service.CommentService;
import tk.quan9.javaweb.hanabisuki.service.UserService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter(filterName = "OperateFilter",urlPatterns =
        {"/editcomment","/UserGetter","/deleteComment","/userProfileProducer"})
public class OperateFilter implements Filter {
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;

    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletRequest servletRequest;
    private ServletResponse servletResponse;
    private FilterChain filterChain;

    private void goHome(HttpServletResponse response){
        try {
            response.sendRedirect("/CommentGetter");
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("被edit过滤器拦截");
    }

    private void goUserInfo(HttpServletResponse response){
        try {
            response.sendRedirect("/redirectJsp/userinfo");
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("被edit过滤器拦截");
    }

    private void continueForward(){
        try {
            filterChain.doFilter(servletRequest,servletResponse);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void setCommentWarning(String warning){
        request.getSession().setAttribute("commentWarning","没有权限："+warning);
    }

    private void setUserInfoWarning(String warning){
        request.getSession().setAttribute("userInfoWarning","没有权限："+warning);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        this.request=(HttpServletRequest) servletRequest;
        this.response=(HttpServletResponse) servletResponse;
        this.servletRequest=servletRequest;
        this.servletResponse=servletResponse;
        this.filterChain=filterChain;
        String url=request.getRequestURI();
        if(url.contains("/editcomment") || url.contains("/deleteComment")){
            commentCheck();
        }else if(url.contains("/UserGetter")){
            userGetterCheck();
        }else if(url.contains("/userProfileProducer")) {
            userEditCheck();
        } else {
            goHome(response);
        }
    }

    private void commentCheck(){
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("LoginUser");
        Comment comment;
        switch (request.getMethod()){
            case "GET":{
                String commentIdGet=request.getParameter("commentId");
                comment=commentService.getCommentById(Integer.parseInt(commentIdGet));
                break;
            }
            case "POST":{
                if((boolean)session.getAttribute("isEdit")) {
                    comment = (Comment) session.getAttribute("commentToEdit");
                    break;
                }else {
                    continueForward();
                    return;
                }
            }
            default:{
                setCommentWarning("操作失败");
                goHome(response);
                return;
            }
        }
        switch (user.getType()) {
            case "AU": {
                continueForward();
                break;
            }
            case "BU": {
                if(user.getGroupId()==commentService.getCommentUserGroupById(comment.getId())){
                    continueForward();
                }else {
                    setCommentWarning("操作失败");
                    goHome(response);
                }
                break;
            }
            case "CU":{
                if(user.getId()==comment.getCommentUserId()){
                    continueForward();
                }else {
                    setCommentWarning("操作失败");
                    goHome(response);
                }
                break;
            }
            default:{
                setCommentWarning("操作失败");
                goHome(response);
            }
        }
    }

    private void userGetterCheck(){
        HttpSession session=request.getSession();
        User operateUser=(User)session.getAttribute("LoginUser");
        switch (operateUser.getType()){
            case "AU":{
                List<User> userList=userService.getUserList();
                session.setAttribute("userList",userList);
                continueForward();
                break;
            }
            case "BU":{
                List<User> userList=userService.getUserListByGroupId(operateUser.getGroupId());
                session.setAttribute("userList",userList);
                continueForward();
                break;
            }
            case "CU":{
                List<User> userList=new ArrayList<>();
                userList.add(operateUser);
                session.setAttribute("userList",userList);
                continueForward();
                break;
            }
        }
    }

    private void userEditCheck(){
        HttpSession session=request.getSession();
        int userId=Integer.parseInt(request.getParameter("userId"));
        User operateUser=(User)session.getAttribute("LoginUser");
        User targetUser=userService.getUserById(userId);
        switch (operateUser.getType()){
            case "AU":{
                session.setAttribute("userForProfile", targetUser);
                continueForward();
                break;
            }
            case "BU":{
                if(targetUser.getGroupId()==operateUser.getGroupId()){
                    session.setAttribute("userForProfile", targetUser);
                    continueForward();
                    break;
                }else {
                    setUserInfoWarning("操作失败！");
                    goUserInfo(response);
                    return;
                }
            }
            case "CU":{
                if(targetUser.getId()==operateUser.getId()){
                    session.setAttribute("userForProfile", targetUser);
                    continueForward();
                    break;
                }else {
                    setUserInfoWarning("操作失败！");
                    goUserInfo(response);
                    return;
                }
            }
            default:{
                setUserInfoWarning("未知错误！");
                goUserInfo(response);
            }
        }
    }
}
