<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="register" class="wrap.RegisterBean" type="wrap.RegisterBean" scope="request"/>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="/ch9/result" method="post">
    <table>
        <tr align="center">
            <td colspan="2">注册</td>
        </tr>
        <tr>
            <td>用户名称：<input type="text" required name="userName"></td>
            <td>用户密码：<input type="password" required name="password"></td>
        </tr>
        <tr>
            <td>重复密码：<input type="password" required name="password_repeat"></td>
            <td>email:<input type="email" required name="email"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>
        </tr>

    </table>
</form>

<%
    if (register.getErrorMessage() != null) {
%>
<p align="center">注册反馈：
    <%
        }
    %>

</p>
<%
    if (register.isSuccessful()) {
%>
<table border="1">
    <tr>
        <td>会员名称</td>
        <td>
            <jsp:getProperty name="register" property="userName"/>
        </td>
    </tr>
    <tr>
        <td>email地址</td>
        <td>
            <jsp:getProperty name="register" property="email"/>
        </td>
    </tr>
</table>
<%
} else {

    if (register.getErrorMessage() != null) {

        out.println("注册失败");
%>
<p>错误原因
    <jsp:getProperty name="register" property="errorMessage"/>
</p>
<%
        }
    }
%>
</body>
</html>
