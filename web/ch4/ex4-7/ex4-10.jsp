<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>我正在学习response对象的</p>
<br>setContentType方法
<p>将当前页面保存为word文档吗？</p>
<form action="" method="get">
    <input type="submit" value="yes" name="submit">
</form>
<%
    String submit = request.getParameter("submit");
    if (submit != null) {
        if (submit.equals("yes")) {
            response.setContentType("application/msword");
        } else {

        }
    } else {

    }
%>
</body>
</html>
