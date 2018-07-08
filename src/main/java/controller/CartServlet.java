package controller;

import entity.Cart;
import entity.LineItem;
import entity.Product;
import entity.ProductMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc = getServletContext();

        String action = req.getParameter("action");

        if (action == null)
            action = "cart";

        String url = "/index.jsp";
        if (action.equals("shop"))
            url = "/index.jsp";
        else if (action.equals("cart")) {
            String productCode = req.getParameter("productCode");
            String quantityString = req.getParameter("quantity");

            HttpSession session = req.getSession();
            session.setMaxInactiveInterval(-1);
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null)
                cart = new Cart();

            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);
                if (quantity < 0)
                    quantity = 1;
            }catch (NumberFormatException nfe) {
                quantity = 1;
            }

            Product product = ProductMap.getProduct(productCode);
            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity);
            if (quantity > 0)
                cart.addItem(lineItem);
            else if (quantity == 0)
                cart.removeItem(lineItem);

            session.setAttribute("cart", cart);
            url = "/WEB-INF/views/cart.jsp";
        }
        else if(action.equals("checkout")) {
            req.getSession().invalidate();
            url = "/index.jsp";
        }
        sc.getRequestDispatcher(url).forward(req, resp);
    }
}