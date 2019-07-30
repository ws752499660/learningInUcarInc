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

@WebServlet(name = "CommentEditer",value = "/editcomment")
public class CommentEditer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentId=request.getParameter("commentId");
        HttpSession session=request.getSession();

        CommentRepo commentRepo=new CommentRepo();
        Comment comment=commentRepo.getCommentById(commentId);
        session.setAttribute("commentToEdit",comment);

        response.sendRedirect("/hanabiBSS/editcomment.jsp");
    }
}
