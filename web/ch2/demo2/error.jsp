<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:include page="header.html"/>
<p>This is error.jsp</p>
<%
    String num = request.getParameter("num");
%>
<p>���ݹ�����ֵ��<%=num%></p>
</body>
</html>
