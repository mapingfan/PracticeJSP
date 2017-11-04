<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>

<%!
    int count = 0;
%>
<%--
  count变量声明的位置无关紧要；
--%>
<html>
<head>
    <title>Example2_2</title>
</head>
<body>
<%
    count++;
%>
<p>你是第<%=count%>个访问此页面的用户</p>
</body>
</html>
