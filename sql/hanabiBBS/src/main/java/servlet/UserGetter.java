package servlet;

import dao.UserRepo;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserGetter",value = "/UserGetter")
public class UserGetter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserRepo userRepo=new UserRepo();
        HttpSession session=request.getSession();
        List<User> userList=userRepo.getUserList();
        for (User user:userList) {
            user.setCommentCounts(userRepo.getCommentCount(user.getId()));
        }

        session.setAttribute("userList",userList);

        response.sendRedirect("/hanabiBBS/userinfo.jsp");
    }
}
