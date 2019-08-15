package tk.quan9.javaweb.hanabisuki.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "loginFilter",urlPatterns = {"*"})
public class LoginFilter implements Filter {

    private void redirect(String url,HttpServletResponse response){
        try {
            response.sendRedirect(url);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String[] noFilters=new String[]{"/Login"};
        HttpServletRequest request=(HttpServletRequest) servletRequest;
        HttpServletResponse response=(HttpServletResponse) servletResponse;
        boolean isFilter=true;
        String url=request.getRequestURI();
        for(String s:noFilters){
            if(url.equals("/") || url.contains(s)) {
                isFilter = false;
                break;
            }
        }

        if(!isFilter){
            filterChain.doFilter(servletRequest,servletResponse);
        }else {
            if(request.getSession().getAttribute("LoginUser")==null){
                redirect("/",response);
//                System.out.println("没有登录！");
            }else {
//                System.out.println("过滤器：已经登录!");
                filterChain.doFilter(servletRequest,servletResponse);
            }
        }
    }
}
