<%@ page import="java.util.LinkedList" %>
<%@ page import="wrap.WrapMessage" %>
<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/07
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td>留言中姓名</td>
        <td>留言标题</td>
        <td>留言时间</td>
        <td>留言内容</td>
    </tr>
    <%
        LinkedList<WrapMessage> list = (LinkedList<WrapMessage>) application.getAttribute("info");
        for (int i = 0; i < list.size(); i++) {
            WrapMessage tmp = list.get(i);
    %>  <tr>
            <td><%=tmp.getName()%></td>
            <td><%=tmp.getTitle()%></td>
            <td><%=tmp.getDate()%></td>
            <td><%=tmp.getContent()%></td>
        </tr>
    <%  }  %>
</table>
<p><a href="submit.jsp">返回留言板</a> </p>
</body>
</html>
