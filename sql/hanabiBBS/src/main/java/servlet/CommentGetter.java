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
        int pagesIndex=0;
        if(request.getParameter("commentPage")!=null){
            pagesIndex=Integer.parseInt(request.getParameter("commentPage"))-1;
        }
        int commentCounts=commentRepo.getCommentCounts();
        int pageListLength=1;
        if(commentCounts%10==0){
            pageListLength=commentCounts/10;
        }else {
            pageListLength=commentCounts/10+1;
        }
        List<Comment> commentList=commentRepo.getCommentListWithPages(pagesIndex);

        session.setAttribute("commentList",commentList);
        session.setAttribute("pageListLength",pageListLength);

        response.sendRedirect("/hanabiBBS/commentList.jsp");
    }
}
