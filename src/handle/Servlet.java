package handle;

import wrap.StorageBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StorageBean storageBean = new StorageBean();
        request.setAttribute("data", storageBean);
        try {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));
            storageBean.setA(a);
            storageBean.setB(b);
            storageBean.setC(c);
            String type = request.getParameter("type");
            if (type.equals("triangle")) {
                if (a + b > c && a + c > b && c + b > a) {
                    double q = (a + b + c) / 2;
                    double area = Math.sqrt(q * (q - a) * (q - b) * (q - c));
                    storageBean.setMessage("三角形");
                    storageBean.setResult(area);
                } else {
                    storageBean.setMessage("不能构成三角形");
                    storageBean.setResult(0);
            }

            } else {
                double area = (a + b) * c / 2;
                storageBean.setResult(area);
                storageBean.setMessage("梯形");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("showResult.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
