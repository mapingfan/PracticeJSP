<%@ page import="com.sun.javafx.iio.ImageFormatDescription" %>
<%@ page import="com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ" %>
<%@ page import="java.io.RandomAccessFile" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    private boolean check(String string) {
        return string != null && string.trim().length() != 0;
    }
%>
<%
    request.setCharacterEncoding("utf-8");
    String content = request.getParameter("content");
    String choice = request.getParameter("choice");
    String path = "F:\\JavaWeb项目\\JSP实践\\web\\ch5\\ex5-3\\" + choice;

    if (check(content) && check(choice)) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(path, "rw");
        randomAccessFile.seek(randomAccessFile.length());
        randomAccessFile.writeUTF(content);
        randomAccessFile.close();
        out.println("写入成功");
    } else {
        out.println("错误");
    }
%>
</body>
</html>
