package servlets;

import dao.UserDao;
import entities.User;
import helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDao userDao = new UserDao(FactoryProvider.getFactory());
            User user = userDao.getUserByEmailAndPassword(email, password);

            HttpSession httpSession = request.getSession();
            if (user == null) {

                httpSession.setAttribute("message", "*Invalid Details !! Try with another one*");
                response.sendRedirect("login.jsp");
                return;
            } else {

                httpSession.setAttribute("current-user", user);

                if (user.getUserType().equals("admin")) {
                    //admin: admin.jsp
                    response.sendRedirect("admin.jsp");
                } else if (user.getUserType().equals("normal")) {
                    //normal: normal.jsp
                    response.sendRedirect("normal.jsp");
                } else {
                    //out.println("We have not identified user type")

                    httpSession.setAttribute("message", "We have not identified user type !!!");
                    response.sendRedirect("login.jsp");
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
