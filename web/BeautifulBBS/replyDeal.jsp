<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="wrap.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    int rootid = Integer.parseInt(request.getParameter("rootid"));
    String sql = "insert into article values(null,?,?,?,?,now(),0)";
    String sql2 = "select count(*) from article where pid = " + id;
    ResultSet resultSet = DB.getResultSet(sql2);
    if (resultSet.next()) {
        if (resultSet.getInt(1) == 0) {
            String sql3 = "update article set isleaf = 1 where id = " + id;
            Statement statement = DB.getStatement(DB.getConnection());
            statement.executeUpdate(sql3);
        }
    }
    PreparedStatement preparedStatement = DB.getPreparedStatement(DB.getConnection(), sql);
    preparedStatement.setInt(1, id);
    preparedStatement.setInt(2, rootid);
    preparedStatement.setString(3, title);
    preparedStatement.setString(4, content);
    preparedStatement.executeUpdate();


    //判断原先是不是叶子节点，如果是，则父节点更改，如果不是，不用处理。

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
