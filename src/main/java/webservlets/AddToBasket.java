package webservlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-to-basket")
public class AddToBasket extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        TempUserDetails tempUserDetails = TempUserDetails.tempUserDetails();
        String sessionIDOfCurrentUser = tempUserDetails.getUserSessionID();
        String categoryID = req.getParameter("categoryID");
        String subcategoryID = req.getParameter("subcategoryID");
        String brandID = req.getParameter("brandID");
        String desc = req.getParameter("desc");
        String count = req.getParameter("count");
        System.out.println(count);
        if (req.getSession().getId().equals(sessionIDOfCurrentUser)) {
            Cookie category = new Cookie("categoryID", categoryID);
            Cookie subcategory = new Cookie("subcategoryID", subcategoryID);
            Cookie brand = new Cookie("brandID", brandID);
            Cookie description = new Cookie("desc", desc);
            Cookie countOfItems = new Cookie("count", count);
            resp.addCookie(category);
            resp.addCookie(subcategory);
            resp.addCookie(brand);
            resp.addCookie(description);
            resp.addCookie(countOfItems);
            System.out.println(req.getHeader("referer"));
            resp.sendRedirect(req.getHeader("referer"));
        } else {
            resp.sendRedirect("/login.jsp");
        }
    }
}
