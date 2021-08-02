package webservlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/logout")
public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //duzgun islemir Cookie invalidate olmur
        HttpSession session = req.getSession(false);
        System.out.println(session.getId());
        session.invalidate();
        Cookie forInvalidate = null;
        Cookie[] cookies = req.getCookies();
        for (Cookie c : cookies) {
            System.out.println(c.getName() + " is " + c.getValue());
            if (c.getName().equals("userIDOnDB")) {
                c.setMaxAge(0);
                forInvalidate = c;
            }
        }
        resp.addCookie(forInvalidate);
        resp.sendRedirect("/index.jsp");


    }
}
