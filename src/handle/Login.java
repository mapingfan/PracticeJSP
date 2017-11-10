package handle;

import wrap.LoginBean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Login")
public class Login extends HttpServlet {

    String url = "jdbc:mysql://localhost:3306/bbs";
    public static final String DB_USER = "root";
    public static final String DB_PASSWORD = "320823";

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loginName = request.getParameter("loginName");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        PrintWriter out = response.getWriter();
        request.getSession().setAttribute("login", loginBean);
        if (!checkLoginName(loginName, password)) {
            loginBean.setErrorMessage("用户名或者密码存在问题");
            loginBean.setLoginSuccessful(false);
            loginBean.setLoginName(loginName);
            response.sendRedirect("login.jsp");
            //用户不存在,
        } else {

            loginBean.setLoginSuccessful(true);
            loginBean.setErrorMessage("登录成功");
            loginBean.setLoginName(loginName);
            response.sendRedirect("login.jsp");
        }
    }

    private boolean checkLoginName(String name, String password) {
        if (name == null || password == null || name.trim().length() == 0 || password.trim().length() == 0) {
            return false;
        }
        try {
            Connection connection = DriverManager.getConnection(url, DB_USER, DB_PASSWORD);
            String sql = "Select logname, password from user ";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                if (resultSet.getString(1).equals(name) && resultSet.getString(2).equals(password)) {
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
