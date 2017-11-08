<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    File file = new File("D:\\JavaWeb项目\\JSP实践\\web\\ch5", "hhh");
    out.println(file.mkdirs());
%>
</body>
</html>
