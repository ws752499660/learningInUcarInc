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

@WebServlet(name = "Login",value = "/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String passWord=request.getParameter("passWord");
        HttpSession session=request.getSession();
        UserRepo userRepo =new UserRepo();
        if(userRepo.LoginCheck(id,passWord)){
            System.out.println("id："+id+"  登录成功!");
            User user=userRepo.getUserById(id);
            setLoginUser(user,session);
            response.sendRedirect("/hanabiBBS/CommentGetter?commentPage=1");
        }
        else {
            System.out.println("登录失败");
            response.sendRedirect("/hanabiBBS");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void setLoginUser(User user,HttpSession session){
        session.setAttribute("LoginUser",user);
    }
}
