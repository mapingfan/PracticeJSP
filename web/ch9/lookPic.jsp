<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="login" type="wrap.LoginBean" class="wrap.LoginBean" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (!login.isLoginSuccessful()) {
        response.sendRedirect("login.jsp");
    } else {
%>
<p><a href="register.jsp">用户注册</a>&nbsp;<a href="login.jsp">用户登录</a>
<p>
<p>欢迎<jsp:getProperty name="login" property="loginName"/>
    <img src="pic.jpg" width="100" height="100">
        <%
    }
%>
</body>
</html>
