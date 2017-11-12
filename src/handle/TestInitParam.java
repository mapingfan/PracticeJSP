package handle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TestInitParam")
public class TestInitParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println(this.getClass());
        out.println(this.getServletConfig().getInitParameter("p1"));
        out.println(this.getInitParameter("p1"));
        out.println(this.getInitParameter("p2"));
        out.println(this.getServletConfig().getServletContext().getInitParameter("school"));
        out.println(this.getServletContext().getInitParameter("school"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
