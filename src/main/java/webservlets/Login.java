package webservlets;

import dbconnection.sqlqueries.Select;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Select selectUser = new Select();
        String email = req.getParameter("email");
        String password = req.getParameter("pass");
        resp.setContentType("text/html");
        if (selectUser.forLogin(email, password)) {
            /*Cookie cookie = new Cookie("username", email);
            cookie.setMaxAge(40);
            resp.addCookie(cookie);*/
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("username", email);

            resp.sendRedirect("/profile.jsp");
        } else {
            PrintWriter printWriter = resp.getWriter();
            printWriter.write("<p>" + " This is not correct user details. Try again" + "</p>");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/login.jsp");
            requestDispatcher.include(req, resp);
        }
    }
}
