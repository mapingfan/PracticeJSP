<%--
  Created by IntelliJ IDEA.
  User: ÂíÆ½·²
  Date: 2017/11/06
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.setMaxInactiveInterval(10);

    boolean flag = session.isNew();
    out.println(flag);
    out.println(session.getId());
    response.setHeader("refresh", "10");
%>
</body>
</html>
