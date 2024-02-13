package servlets;

import models.UserBean;
import models.MySQLConnector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;

@WebServlet(name="showCourses", urlPatterns = "/showCourses")
public class ShowCourses extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        LinkedList data = MySQLConnector.getConnector().selectQuery("allFromCourses");
        UserBean usersBean = new UserBean();
        usersBean.setData(data);

        req.getSession().setAttribute("UserBean", usersBean);
        System.out.println(((UserBean)(req.getSession().getAttribute("UserBean"))).getData());
        req.getRequestDispatcher("showCourses.jsp").forward(req, resp);
    }
}