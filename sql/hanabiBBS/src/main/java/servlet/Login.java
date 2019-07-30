package servlet;

import dao.LoginRepo;
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
        LoginRepo loginRepo=new LoginRepo(id,passWord);
        if(loginRepo.LoginCheck()){
            System.out.println("id："+id+"  登录成功!");
            setLoginUser(id,passWord,session);
            response.sendRedirect("/hanabiBBS/CommentGetter");
        }
        else {
            System.out.println("登录失败");
            response.sendRedirect("/hanabiBBS");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void setLoginUser(String id,String passWord,HttpSession session){
        User user=new User();
        user.setId(id);
        user.setPassWord(passWord);
        session.setAttribute("LoginUser",user);
    }
}
