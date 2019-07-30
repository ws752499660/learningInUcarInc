package servlet;

import dao.CommentRepo;
import entity.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CommentGetter",value = "/CommentGetter")
public class CommentGetter extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CommentRepo commentRepo=new CommentRepo();
        HttpSession session=request.getSession();
        List<Comment> commentList=commentRepo.getCommentList();
        if(!commentList.isEmpty()){
            session.setAttribute("commentList",commentList);
        }
        response.sendRedirect("/hanabiBBS/commentList.jsp");
    }
}
