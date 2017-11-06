<%--
  Created by IntelliJ IDEA.
  User: ÂíÆ½·²
  Date: 2017/11/06
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String referer = request.getHeader("referer");
    if (referer == null) {
        referer = "";
        response.setStatus(404);
    }
    if (!referer.endsWith("one.jsp")) {
        response.setStatus(404);
    } else {
        out.println("hhh");
    }
%>
</body>
</html>
