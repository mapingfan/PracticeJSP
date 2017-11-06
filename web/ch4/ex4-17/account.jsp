<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String buy = request.getParameter("buy");
    if (buy != null && !buy.trim().equals("")) {
        session.setAttribute("buy", buy);
    }
%>

<%
    String 姓名 = (String) session.getAttribute("name");
    String 商品 = (String) session.getAttribute("buy");
%>
<p>这里是结账处，顾客的姓名是: <%=姓名%></p>
<p>你选择购买的商品是: <%=商品%></p>
</body>
</html>
