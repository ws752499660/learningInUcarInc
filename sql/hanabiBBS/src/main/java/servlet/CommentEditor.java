package servlet;

import dao.CommentRepo;
import entity.Comment;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "CommentEditor",value = "/editcomment")
public class CommentEditor extends HttpServlet {
    private CommentRepo commentRepo;

    public CommentEditor() {
        super();
        commentRepo=new CommentRepo();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if((boolean)session.getAttribute("isEdit")){
            updateComment(request,session);
        }else {
            insertComment(request,session);
        }
        session.setAttribute("commentToEdit",null);

        response.sendRedirect("/hanabiBBS/CommentGetter");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentId=request.getParameter("commentId");
        HttpSession session=request.getSession();

        Comment comment=commentRepo.getCommentById(commentId);
        session.setAttribute("commentToEdit",comment);
        System.out.println("editor!");

        response.sendRedirect("/hanabiBBS/editcomment.jsp");
    }

    private void updateComment(HttpServletRequest request,HttpSession session){
        Comment comment=(Comment)session.getAttribute("commentToEdit");
        comment.setTitle(codeTrans(request.getParameter("title")));
        comment.setDetail(codeTrans(request.getParameter("detail")));
        comment.setEditTime(new Date());
        commentRepo.updateComment(comment);
    }

    private void insertComment(HttpServletRequest request,HttpSession session){
        Comment comment=new Comment();
        User user=(User) session.getAttribute("LoginUser");
        comment.setTitle(codeTrans(request.getParameter("title")));
        comment.setDetail(codeTrans(request.getParameter("detail")));
        comment.setCreateTime(new Date());
        comment.setEditTime(new Date());
        comment.setUserId(user.getId());
        commentRepo.insertComment(comment);
    }

    private String codeTrans(String a){
        try {
            String b=new String(a.getBytes("ISO8859-1"),"UTF-8");
            return b;
        }catch (Exception e){
            e.printStackTrace();
        }
        return a;
    }
}
