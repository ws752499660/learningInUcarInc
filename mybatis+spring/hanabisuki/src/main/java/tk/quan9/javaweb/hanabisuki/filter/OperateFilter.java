package tk.quan9.javaweb.hanabisuki.filter;

import org.springframework.beans.factory.annotation.Autowired;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.service.CommentService;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;
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
        {"/CommentGetter","/editcomment","/UserGetter",
                "/deleteComment","/userProfileProducer",
                "/rightsControl","/changeGroup"})
public class OperateFilter implements Filter {
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userService;
    @Autowired
    private RightsCheck rightsCheck;

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
        if(url.contains("/CommentGetter")){
            commentViewerCheck();
        }else if(url.contains("/editcomment") || url.contains("/deleteComment")) {
            commentCheck();
        }else if(url.contains("/UserGetter")){
            userGetterCheck();
        }else if(url.contains("/userProfileProducer")) {
            userEditCheck();
        } else if(url.contains("/rightsControl") || url.contains("/changeGroup")){
            rightsControlCheck();
        } else {
            goHome(response);
        }
    }

    private void commentViewerCheck(){
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("LoginUser");
        ArrayList userRight=rightsCheck.getRightsByRoleName(user.getType());
        if(userRight.get(0).equals("1")){
            continueForward();
        }else {
            session.setAttribute("indexWarning","您没有权限登录");
            try {
                response.sendRedirect("/");
            }catch (Exception e){
                e.printStackTrace();
            }
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
        ArrayList userRight=rightsCheck.getRightsByRoleName(user.getType());
        if(user.getGroupId()==commentService.getCommentUserGroupById(comment.getId())
            && userRight.get(4).equals("1")){
            continueForward();
        }else if(user.getId()==comment.getCommentUserId() && userRight.get(2).equals("1")){
            continueForward();
        }else {
            setCommentWarning("操作失败");
            goHome(response);
        }
    }

    private void userGetterCheck(){
        HttpSession session=request.getSession();
        User operateUser=(User)session.getAttribute("LoginUser");
        ArrayList userRight=rightsCheck.getRightsByRoleName(operateUser.getType());
        if(userRight.get(6).equals("1")){
            List<User> userList=userService.getUserList();
            session.setAttribute("userList",userList);
            continueForward();
        }else if(userRight.get(3).equals("1")){
            List<User> userList=userService.getUserListByGroupId(operateUser.getGroupId());
            session.setAttribute("userList",userList);
            continueForward();
        }else if(userRight.get(0).equals("1")){
            List<User> userList=new ArrayList<>();
            userList.add(operateUser);
            session.setAttribute("userList",userList);
            continueForward();
        }else {
            setCommentWarning("操作失败");
            goHome(response);
        }
    }

    private void userEditCheck(){
        HttpSession session=request.getSession();
        int userId=Integer.parseInt(request.getParameter("userId"));
        User operateUser=(User)session.getAttribute("LoginUser");
        if(operateUser!=null) {
            User targetUser = userService.getUserById(userId);
            ArrayList userRight = rightsCheck.getRightsByRoleName(operateUser.getType());
            if (userRight.get(5).equals("1")) {
                session.setAttribute("userForProfile", targetUser);
                continueForward();
            } else if (userRight.get(3).equals("1") && targetUser.getGroupId() == operateUser.getGroupId()) {
                session.setAttribute("userForProfile", targetUser);
                continueForward();
            } else if (userRight.get(0).equals("1") && targetUser.getId() == operateUser.getId()) {
                session.setAttribute("userForProfile", targetUser);
                continueForward();
            } else {
                setUserInfoWarning("操作失败！");
                goUserInfo(response);
            }
        } else {
            setUserInfoWarning("操作失败！");
            goUserInfo(response);
        }
//        switch (operateUser.getType()){
//            case "AU":{
//                session.setAttribute("userForProfile", targetUser);
//                continueForward();
//                break;
//            }
//            case "BU":{
//                if(targetUser.getGroupId()==operateUser.getGroupId()){
//                    session.setAttribute("userForProfile", targetUser);
//                    continueForward();
//                    break;
//                }else {
//                    setUserInfoWarning("操作失败！");
//                    goUserInfo(response);
//                    return;
//                }
//            }
//            case "CU":{
//                if(targetUser.getId()==operateUser.getId()){
//                    session.setAttribute("userForProfile", targetUser);
//                    continueForward();
//                    break;
//                }else {
//                    setUserInfoWarning("操作失败！");
//                    goUserInfo(response);
//                    return;
//                }
//            }
//            default:{
//                setUserInfoWarning("未知错误！");
//                goUserInfo(response);
//            }
//        }
    }

    private void rightsControlCheck() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("LoginUser");
        if(user.getType().equals("AU")){
            continueForward();
        }else {
            setCommentWarning("不是超级管理员无法使用该功能");
            goHome(response);
        }
    }
}
