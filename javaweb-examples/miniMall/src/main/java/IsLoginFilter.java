import com.sun.deploy.net.HttpRequest;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "IsLoginFilter",urlPatterns = {"/cart.jsp","/shopping.jsp"})
public class IsLoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request=(HttpServletRequest) req;
        HttpServletResponse response=(HttpServletResponse) resp;

        String url=request.getRequestURI();
        System.out.println("IsLoginFilter-当前请求的url：" + url);
        int idx = url.lastIndexOf("/");
        String endWith = url.substring(idx + 1);
        if(endWith.equals("") || endWith.equals("index.jsp")){
            chain.doFilter(req,resp);
        }


        HttpSession session=request.getSession();
        if(session.getAttribute("userName")!=null){
            chain.doFilter(req, resp);
        }
        else{
            System.out.println("没有登录");
            session.setAttribute("warning","请登录后再进行操作");
            response.sendRedirect("/miniMall/");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
