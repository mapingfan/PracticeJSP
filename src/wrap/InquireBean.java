package wrap;

import java.sql.*;

public class InquireBean {
    private String tableName;
    private String result;
    private String user = "root";
    private String password = "320823";
    private String path = "jdbc:mysql://localhost:3306/bbs";


    public String getTableName() {

        return tableName;
    }

    public String getResult() {
        try {
            StringBuffer sb = new StringBuffer();
            sb.append("<table border=1>");
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(path, user, password);
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM booklist");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                sb.append("<tr>");
                sb.append("<td>" + resultSet.getString(1) + "</td>");
                sb.append("<td>" + resultSet.getString(2) + "</td>");
                sb.append("<td>" + resultSet.getString(3) + "</td>");
                sb.append("<td>" + resultSet.getString(4) + "</td>");
                sb.append("</tr>");
            }
            sb.append("</table>");
            result = new String(sb);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }
}
