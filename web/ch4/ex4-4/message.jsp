<%--
  Created by IntelliJ IDEA.
  User: ÂíÆ½·²
  Date: 2017/11/06
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //request.setCharacterEncoding("utf-8");
    String protocol = request.getProtocol();
    out.println(protocol);
%>
<%
    String path = request.getServletPath();
    out.println(path);

    int length = request.getContentLength();
    out.println(length);

    String method = request.getMethod();
    out.println(method);

    String header = request.getHeader("User-Agent");
    out.println(header);

    String header2 = request.getHeader("accept");
    out.println(header2);

    String accept_encoding = request.getCharacterEncoding();
    out.println(accept_encoding);

    String IP = request.getRemoteAddr();
    out.println(IP);

    String Host = request.getRemoteHost();
    out.println(Host);

%>
</body>
</html>
