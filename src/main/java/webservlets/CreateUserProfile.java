package webservlets;

import dbconnection.sqlqueries.Insert;
import dbconnection.sqlqueries.Select;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(value = "/create")
public class CreateUserProfile extends HttpServlet {

    private static final Pattern VALID_PASSWORD =
            Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=*])(?=\\S+$).{8,}$");
    private static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("pass");
        String email = req.getParameter("email");

        if (validateEmail(email) && validatePassword(password)) {
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

    private static boolean validatePassword(String pass) {
        Matcher matcher = VALID_PASSWORD.matcher(pass);
        return matcher.find();
    }

    private static boolean validateEmail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }
}
