<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String param = request.getParameter("num");
    out.println("传过来的数字是" + Double.parseDouble(param));
%>
</body>
</html>
