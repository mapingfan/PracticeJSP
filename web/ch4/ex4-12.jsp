<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/06
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>��ǰ��ʱ���ǣ� </p>
<%=new Date()%>
<%
    response.setHeader("Refresh", "5");
%>
</body>
</html>
