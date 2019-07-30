package servlet;

import dao.CommentRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentDeleter",value = "/deleteComment")
public class CommentDeleter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentId=request.getParameter("commentId");
        CommentRepo commentRepo=new CommentRepo();
        try {
            commentRepo.deleteComment(commentId);
        }catch (Exception e){
            e.printStackTrace();
        }
        response.sendRedirect("/hanabiBBS/CommentGetter");
    }
}
