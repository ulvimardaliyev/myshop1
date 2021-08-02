package filters;

import dbconnection.sqlqueries.Select;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/login")
public class FilterForLogin implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {

        Select selectUser = new Select();
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        response.setContentType("text/html");
        if (selectUser.forLogin(email, password)) {
            HttpSession session = ((HttpServletRequest) request).getSession();
            Cookie cookie = new Cookie("userIDOnDB", "1");
            Cookie cookie1 = new Cookie("username", email);
            ((HttpServletResponse) response).addCookie(cookie);
            ((HttpServletResponse) response).addCookie(cookie1);
            session.setAttribute("username", email);
            chain.doFilter(request, response);
        } else {
            PrintWriter printWriter = response.getWriter();
            printWriter.write("<p>" + " This is not correct user details. Try again" + "</p>");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
            requestDispatcher.include(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
