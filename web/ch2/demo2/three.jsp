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
<p>This is three.jsp</p>
<%
    String num = request.getParameter("num");
%>
<p>传递过来的值是<%=num%></p>
</body>
</html>
