package handle;

import wrap.RegisterBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "Register")
public class Register extends HttpServlet {
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

    private boolean checkPassword(String pwd1, String pwd2) {
        if (pwd1 != null && pwd2 != null && pwd1.trim().length() != 0 && pwd2.trim().length() != 0) {
            return pwd1.equals(pwd2);
        }
        return false;
    }

    private boolean checkUserName(String userName) {
        try {
            Connection connection = DriverManager.getConnection(url, DB_USER, DB_PASSWORD);
            String sql = "select logname from user";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                if (resultSet.getString(1).equals(userName)) {
                    return false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userName != null && userName.trim().length() != 0;
    }

    private boolean checkEmail(String email) {
        return email != null && email.trim().length() != 0;
    }

    private void registerFailed(String errorMessage, HttpServletRequest request, HttpServletResponse response, RegisterBean registerBean) {
        registerBean.setSuccessful(false);
        registerBean.setErrorMessage(errorMessage);
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RegisterBean registerBean = new RegisterBean();
        request.setAttribute("register", registerBean);
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String password_repeat = request.getParameter("password_repeat");
        String email = request.getParameter("email");
        //对数据进行检验；需要验证密码，用户名的正确性。
        if (!checkPassword(password, password_repeat)) {
            registerFailed("两次密码不一样", request, response, registerBean);
        }
        if (!checkUserName(userName)) {
            registerFailed("用户名有误", request, response, registerBean);
        }
        if (!checkEmail(email)) {
            registerFailed("有效有误", request, response, registerBean);
        }
        //检查过后，开始注册
        String sql = "INSERT INTO user VALUES (?,?,?)";
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(url, DB_USER, DB_PASSWORD);
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);
            preparedStatement.executeUpdate();
            connection.commit();
            connection.setAutoCommit(true);
            registerBean.setSuccessful(true);
            registerBean.setUserName(userName);
            registerBean.setEmail(email);
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.rollback();
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
