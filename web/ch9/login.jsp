<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="login" type="wrap.LoginBean" class="wrap.LoginBean" scope="session"/>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="/ch9/loginServlet" method="post">
    <table border="1">
        <tr>
            <td colspan="2" align="center">登录</td>
        </tr>
        <tr>
            <td>登录名称：&nbsp;</td>
            <td><input type="text" name="loginName"></td>
        </tr>
        <tr>
            <td>输入密码：&nbsp;</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
<p><a href="lookPic.jsp"> 登陆后看图片</a></p>

<%
    if (login.isLoginSuccessful()) {

%>
<p>登录反馈信息：</p>
<jsp:getProperty name="login" property="loginName"/>
登录成功
<Br>
<p>登录名称</p>
<br>
<jsp:getProperty name="login" property="loginName"/>
<%
} else {
    if (login.getErrorMessage() != null) {

%>
<jsp:getProperty name="login" property="loginName"/>
登录失败
<p>错误原因<jsp:getProperty name="login" property="errorMessage"/>
        <%
        }
    }
%>
</body>
</html>
