<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.html"/>
<p>This is three.jsp</p>
<%
    String num = request.getParameter("num");
%>
<p>���ݹ�����ֵ��<%=num%></p>
</body>
</html>
