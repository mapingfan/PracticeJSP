<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>链接到tom</p>
<p>session ID: </p>
<p><%=session.getId()%></p>
<%
    //String str = response.encodeURL("../tom/tom.jsp");
%>
<p><A href="../tom/tom.jsp">连接到tom</A> </p>
</body>
</html>
