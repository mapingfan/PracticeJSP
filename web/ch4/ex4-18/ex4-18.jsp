<%--
  Created by IntelliJ IDEA.
  User: 马平凡
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
<p>随机给你分配一个1-100之间的数，请猜：</p>
<%
    int rand = (int) (Math.random()*100+1);
    session.setAttribute("random", rand);
    session.setAttribute("cnt", 0);
%>
<p><a href="guess.jsp">去猜这个数</a> </p>
</body>
</html>
