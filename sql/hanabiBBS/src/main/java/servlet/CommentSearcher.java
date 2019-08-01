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

@WebServlet(name = "CommentSearcher",value = "/searchByUser")
public class CommentSearcher extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String userId=request.getParameter("userId");
        CommentRepo commentRepo=new CommentRepo();
        List<Comment> commentList=commentRepo.getCommentListByUserId(userId);
        session.setAttribute("commentListByUser",commentList);

        response.sendRedirect("/hanabiBBS/search.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.setAttribute("commentListByUser",null);
        response.sendRedirect("/hanabiBBS/search.jsp");
    }
}
