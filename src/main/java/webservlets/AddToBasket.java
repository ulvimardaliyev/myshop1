package webservlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-to-basket")
public class AddToBasket extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
/*        String book = req.getParameter("book");
        int price = Integer.parseInt(req.getParameter("price"));
        System.out.println("Book is " + book);
        System.out.println("Price is " + price);

        resp.getWriter().write("Price is "+price+"<br>");
        resp.getWriter().write("Book is "+book);
        String jeans = req.getParameter("jeans");
        System.out.println(jeans);
        resp.getWriter().write("Book is "+jeans);*/

        Integer categoryID = Integer.parseInt(req.getParameter("categoryID"));
        Integer subcategoryID = Integer.parseInt(req.getParameter("subcategoryID"));
        String brandID = req.getParameter("brandID");
        String desc = req.getParameter("desc");

        resp.getWriter().write("categoryID is " + categoryID);
        resp.getWriter().write("subcategoryID " + subcategoryID);
        resp.getWriter().write("brandID " + brandID);
        resp.getWriter().write("desc " + desc);
    }
}
