package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/add-to-basket")
public class ProductFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter is active");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest request1 = (HttpServletRequest)request;
        if (request1.getSession(false)!=null){
            System.out.println("Filtered");
            chain.doFilter(request, response);
        } else {
            System.out.println("inside else");
            ((HttpServletResponse) response).sendRedirect("/login.jsp");
        }

    }

    @Override
    public void destroy() {

    }
}
