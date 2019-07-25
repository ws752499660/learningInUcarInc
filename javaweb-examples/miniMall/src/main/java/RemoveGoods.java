import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RemoveGoods",value = "/RemoveGoods")
public class RemoveGoods extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        int goodsIndex=Integer.parseInt(request.getParameter("goodsIndex"));
//        System.out.println(goodsIndex);
        List goodList=(List)session.getAttribute("goodsList");
        goodList.remove(goodsIndex);
        session.setAttribute("goodsList",goodList);
        response.sendRedirect("/miniMall/cart.jsp");
    }
}
