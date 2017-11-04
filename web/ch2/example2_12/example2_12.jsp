<%--
  Created by IntelliJ IDEA.
  User: ÂíÆ½·²
  Date: 2017/11/03
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<%
    double random = Math.random()*1000;
%>
<head>
    <title></title>
</head>
<body>
<jsp:forward page="come.jsp">
    <jsp:param name="num" value="<%=random%>"/>
</jsp:forward>
</body>
</html>
