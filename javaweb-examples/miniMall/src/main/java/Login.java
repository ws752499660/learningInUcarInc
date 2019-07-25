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
        String userName=new String
                (request.getParameter("userName").getBytes("ISO8859-1"),
                        "UTF-8");
        HttpSession session = request.getSession();
        session.setAttribute("userName",userName);
        System.out.println("用户登录："+userName);
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

//        request.getRequestDispatcher("/shopping.jsp").forward(request,response);
        response.sendRedirect("/miniMall/shopping.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/miniMall");
    }
}
