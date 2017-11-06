<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.setAttribute("customer","顾客");
%>
<p>输入姓名链接到第一百货：</p>
<form action="shop.jsp" method="post">
    <input type="text" name="name">
    <input type="submit" value="送出">
</form>
</body>
</html>
