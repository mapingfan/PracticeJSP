<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/02
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Example1_1</title>
</head>
<body style="background:burlywood; size: 13px">
<p>这是一个简单的JSP页面</p>
<%
    int sum = 0;
    for (int j = 0; j < 101; j++) {
        sum += j;
    }
%>
<p>1到100的连续和是<%=sum%></p>
</body>
</html>
