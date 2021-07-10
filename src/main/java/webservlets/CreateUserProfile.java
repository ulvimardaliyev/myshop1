package webservlets;

import dbconnection.sqlqueries.Insert;
import dbconnection.sqlqueries.Select;
import validation.ValidateUserDetails;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet(value = "/create")
public class CreateUserProfile extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("pass");
        String email = req.getParameter("email");

        if (ValidateUserDetails.validate(email, password)) {
            Select selectUser = new Select();
            if (selectUser.hasUserOnDb(username, email)) {
                resp.getWriter().write("<p style=\"color:red\">" + " This user is already registered" + "</p>");
                System.out.println("Hey");
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("signup.jsp");
                requestDispatcher.include(req, resp);
            } else {
                Insert insert = new Insert();
                boolean resultOfInsert = insert.isNewUser(username, password, email);
                System.out.println(resultOfInsert);
                System.out.println("I am inside else");
                HttpSession httpSession = req.getSession();
                httpSession.setAttribute("username", username);
                /*Cookie cookie = new Cookie("username", username);
                cookie.setMaxAge(40);
                resp.addCookie(cookie);*/
                resp.sendRedirect("/profile.jsp");
            }

        } else {
            resp.getWriter().write("<p style=\"color:red\">" + " Please write correct email or password" + "</p>");
            System.out.println("Hey");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("signup.jsp");
            requestDispatcher.include(req, resp);
        }
    }
}
