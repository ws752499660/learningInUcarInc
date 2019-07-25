import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddGoods",value ="/AddGoods")
public class AddGoods extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        List<String> goodsList;
        if(session.getAttribute("goodsList")==null){
            goodsList=new ArrayList<>();
        }
        else {
            goodsList=(List<String>) session.getAttribute("goodsList");
        }
        String goodsName=new String
                (request.getParameter("goodsName").getBytes("ISO8859-1"),
                        "UTF-8");
        goodsList.add(goodsName);
        session.setAttribute("goodsList",goodsList);
//        request.getRequestDispatcher("cart.jsp").forward(request,response);
        response.sendRedirect("cart.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/miniMall");
    }
}
