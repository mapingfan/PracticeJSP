package wrap;

import com.sun.rowset.CachedRowSetImpl;

import java.sql.*;

public class ShowRecord {
    private String databaseName;
    private String tableName;
    private int allPageNumber;
    private int perPageNumber;
    private String queryResult;
    private int currentPageNumber = 1;

    private String user = "root";
    private String password = "320823";
    private String path = "jdbc:mysql://localhost:3306/bbs";

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public int getPerPageNumber() {
        return perPageNumber;
    }

    public void setPerPageNumber(int perPageNumber) {
        this.perPageNumber = perPageNumber;
    }

    /**
     * 下面开始实现
     * @return
     */
    public int getAllPageNumber() {
        int rows = 0 ;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(path, user, password);
            Statement statement = connection.createStatement();
            String sql1 = "select count(*) from " + tableName;
            ResultSet resultSet1 =  statement.executeQuery(sql1);
            if (resultSet1.next()) {
                rows = resultSet1.getInt(1);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        allPageNumber = (rows % perPageNumber == 0) ? rows / perPageNumber : rows / perPageNumber + 1;
        return allPageNumber;
    }

    @SuppressWarnings("Duplicates")
    public String getQueryResult() {
        StringBuffer sb = new StringBuffer();
        sb.append("<table border=1><tr>" +
                "<td>id</td><td>pid</td><td>rootid</td><td>title</td><td>content</td><td>pdate</td><td>isleaf</td>" +
                "</tr>");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(path, user, password);
            int index = (currentPageNumber - 1) * perPageNumber;
            String sql = "SELECT * FROM " + tableName + " LIMIT " + index + "," + perPageNumber;
            //String sql = "SELECT * FROM " + tableName;
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
           /* CachedRowSetImpl cachedRowSet = new CachedRowSetImpl();
            ResultSet resultSet = preparedStatement.executeQuery();
            cachedRowSet.populate(resultSet);*/
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                sb.append("<tr width=50>");
                sb.append("<td>" + resultSet.getString(1) + "</td>");
                sb.append("<td>" + resultSet.getString(2) + "</td>");
                sb.append("<td>" + resultSet.getString(3) + "</td>");
                sb.append("<td>" + resultSet.getString(4) + "</td>");
                sb.append("<td>" + resultSet.getString(5) + "</td>");
                sb.append("<td>" + resultSet.getString(6) + "</td>");
                sb.append("<td>" + resultSet.getString(7) + "</td>");
                sb.append("</tr>");
            }
            sb.append("</table>");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        queryResult = new String(sb);
        return queryResult;
    }

    public int getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(int currentPageNumber) {
        if (currentPageNumber > allPageNumber) {
            this.currentPageNumber = allPageNumber;
        } else if (currentPageNumber <= 0) {
            this.currentPageNumber = 1;
        } else {
            this.currentPageNumber = currentPageNumber;
        }
    }

}
