<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
<%
    //request.setCharacterEncoding("utf-8");
    String text = request.getParameter("fruit");
    String btn = request.getParameter("submit");
    if (text != null && btn != null) {
        if (!text.trim().equals("") && !btn.trim().equals("")) {
            out.println(text);
            out.println(btn);
        }
    }
%>
</body>
</html>
