package hanabiMVC.controller;

import hanabiMVC.entity.Comment;
import hanabiMVC.service.CommentService;
import hanabiMVC.service.RightsCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class CommentListController {
    @Autowired
    private CommentService commentService;
    @Autowired
    private RightsCheck rightsCheck;

    private void redirect(String url, HttpServletResponse response){
        try {
            response.sendRedirect(url);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/CommentGetter"})
    public String commentGetter(HttpServletRequest request, HttpSession session){

        int pagesIndex=0;
        if(request.getParameter("commentPage")!=null){
            pagesIndex=Integer.parseInt(request.getParameter("commentPage"))-1;
        }

        int commentCounts=commentService.getCommentCounts();
        int pageListLength=1;
        if(commentCounts%10==0){
            pageListLength=commentCounts/10;
        }else {
            pageListLength=commentCounts/10+1;
        }

        List<Comment> commentList=commentService.getCommentListWithPages(pagesIndex);

        session.setAttribute("commentList",commentList);
        session.setAttribute("pageListLength",pageListLength);

        return "commentList";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/editcomment"})
    public String editComment(HttpSession session,
                              HttpServletRequest request,HttpServletResponse response){
        String commentId=request.getParameter("commentId");
        Comment comment = commentService.getCommentById(Integer.parseInt(commentId));
        session.setAttribute("commentToEdit", comment);
        return "editcomment";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/newComment"})
    public String newComment(HttpSession session){
        session.setAttribute("commentToEdit", null);
        return "editcomment";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/editcomment"})
    public void updateOrInsertComment(HttpSession session,
                                      HttpServletRequest request,HttpServletResponse response){
        if((boolean)session.getAttribute("isEdit")){
            commentService.updateComment(request,session);
        }else {
            commentService.insertComment(request,session);
        }
        session.setAttribute("commentToEdit",null);

        redirect("/CommentGetter",response);
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/deleteComment"})
    public void deleteComment(HttpSession session,
            HttpServletRequest request,HttpServletResponse response){
        int commentId= Integer.parseInt(request.getParameter("commentId"));
        System.out.println("deleteing comment ID: "+commentId);
        commentService.deleteComment(commentId);
        session.setAttribute("commentWarning","删除成功");
        redirect("/CommentGetter",response);
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/logout"})
    public String logout(HttpSession session,HttpServletRequest request,
                         HttpServletResponse response){
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie:cookies){
            cookie.setValue(null);
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);
        }
        session.invalidate();
        return "index";
    }

}
