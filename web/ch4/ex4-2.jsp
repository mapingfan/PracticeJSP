<%@ page import="static java.io.FileDescriptor.out" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/05
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="content" value="<%=request.getParameter("content")==null?"":request.getParameter("content")%>">
    <input type="submit" value="enter">
</form>
<%!
    private boolean check(String s) {
        if (s == null) {
            return false;
        } else {
            for (int i = 0; i < s.length(); i++) {
                if (!Character.isDigit(s.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }
%>
<%
    String content = request.getParameter("content");
    if (content != null && !content.trim().equals("")) {
        if (check(content)) {
            out.println(content + "的平方根: ");
            double result = Math.sqrt(Double.parseDouble(content));
            out.println(result);
        }
    } else {

    }
%>
</body>
</html>
