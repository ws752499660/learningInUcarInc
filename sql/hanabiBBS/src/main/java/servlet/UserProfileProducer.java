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

@WebServlet(name = "UserProfileProducer",value = "/userProfileProducer")
public class UserProfileProducer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        UserRepo userRepo=new UserRepo();
        User user=(User) session.getAttribute("userForProfile");
        user.setUserName(codeTrans(request.getParameter("userName")));
        user.setPassWord(request.getParameter("passWord"));
        user.setPhoneNum(request.getParameter("phoneNum"));
        user.setEmail(request.getParameter("email"));
        userRepo.updateUser(user);
        response.sendRedirect("/hanabiBBS/UserGetter");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId=request.getParameter("userId");
        HttpSession session=request.getSession();
        UserRepo userRepo=new UserRepo();
        User user=userRepo.getUserById(userId);
        session.setAttribute("userForProfile",user);
        response.sendRedirect("/hanabiBBS/userprofile.jsp");
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
