<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
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
    <label>������1-100֮�������:  </label><input type="text" name="num">
    <br>
    <input type="submit" value="�ͳ�">
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
