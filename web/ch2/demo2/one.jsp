<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.html"/>
<form action="" method="get">
    <label>请输入1-100之间的正数:  </label><input type="text" name="num">
    <br>
    <input type="submit" value="送出">
</form>
<%
    String num = request.getParameter("num");
    if (num == null) {
        num = "0";
    }
    if (Integer.parseInt(num) > 50 && Integer.parseInt(num) < 100) {
        %>
<jsp:forward page="three.jsp">
    <jsp:param name="num" value="<%=num%>" />
</jsp:forward>
        <% } else if (Integer.parseInt(num) > 1 && Integer.parseInt(num) <= 50) {
        %>
<jsp:forward page="two.jsp">
    <jsp:param name="num" value="<%=num%>" />
</jsp:forward>
        <% } else if (Integer.parseInt(num) > 100) {
%>
<jsp:forward page="error.jsp">
                <jsp:param name="num" value="<%=num%>" />
</jsp:forward>
        <% } else {

    }
    %>
</body>
</html>
