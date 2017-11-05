<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/05
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String message = request.getParameter("message");
    String value = request.getParameter("action");
    if (message != null && value != null) {
        if (!message.trim().equals("")) {
            out.println("<p>获取文本框提交的信息：" + message + "</p><br>");
            out.println("<p>获取按钮的名字：" + value + "</p>");
        } else {
            out.println("提交信息为空");
        }
    }
%>
</body>
</html>
