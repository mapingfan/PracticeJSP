<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
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
<p>���ӵ�jerry</p>
<p>session ID: </p>
<p><%=session.getId()%></p>
<%
    //String str = response.encodeURL("../jerry/jerry.jsp");
%>
<p><A href="../jerry/jerry.jsp">���ӵ�jerry</A> </p>
</body>
</html>
