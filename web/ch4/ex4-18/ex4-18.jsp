<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/06
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<p>����������һ��1-100֮���������£�</p>
<%
    int rand = (int) (Math.random()*100+1);
    session.setAttribute("random", rand);
    session.setAttribute("cnt", 0);
%>
<p><a href="guess.jsp">ȥ�������</a> </p>
</body>
</html>
