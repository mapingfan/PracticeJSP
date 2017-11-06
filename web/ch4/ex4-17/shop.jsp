<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>这里是第一百货</p>
<p>输入你想购买的商品链接到结账</p>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    if (name != null && !name.trim().equals("")) {
        session.setAttribute("name", name);
    } else {
        out.println("名字输入错误");
        return;
    }
%>
<form action="account.jsp" method="post">
    <input type="text" name="buy">
    <input type="submit" value="送出">
</form>
</body>
</html>
